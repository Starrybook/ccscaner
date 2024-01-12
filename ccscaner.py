import tree_sitter
from tree_sitter import Language, Parser
import sys
import os
from cctable import FeatureTable
"""
@ccscaner.py
input:
	argv[1]: source file path
	argv[2]: in debug mode or not
	argv[3]: feature table storage path
	argv[4]: detailed info storage path
argv[1] is necessary
"""

CPP_LANGUAGE = Language('build/my-languages.so', 'cpp')
SRC_FILE_PATH = ""
DEBUG_MODE = False
STORE_FEATURE_TABLE = False
STORE_DETAILED_INFO = False
FEATURE_TABLE_PATH = ""
DETAILED_INFO_PATH = ""

class Scanner:
    def __init__(self, src) -> None:
        # get parse tree
        parser = Parser()
        parser.set_language(CPP_LANGUAGE)
        with open(src, "r", encoding='utf-8') as file:
            self.text = file.read().encode('utf-8')
        self.tree = parser.parse(self.text)
        # in order to traverse the tree
        self.cursor = self.tree.walk()
        self.root = self.tree.root_node
        # feature table
        self.cctable = FeatureTable(SRC_FILE_PATH, DEBUG_MODE, STORE_FEATURE_TABLE, 
                                    FEATURE_TABLE_PATH, STORE_DETAILED_INFO, DETAILED_INFO_PATH)
    
    def run(self) -> None:
        if DEBUG_MODE:
            print('>---------------------------------------------------------------------------')
        # run all the find_XXX() functions
        for key in self.cctable.table:
            for list in self.cctable.table[key]:
                method_name = 'find_' + key + '_' + list
                method = getattr(self, method_name, None)
                if method and callable(method):
                    try:
                        if DEBUG_MODE:
                            print('In find_' + key + '_' + list + ', captures: ')
                        method()
                    except (AttributeError, TypeError) as e:
                        print(f'In Scanner.run(), {method_name}() failed with error: {str(e)}')
                else:
                    print(f'In Scanner.run(), {method_name}() does not exist')
        if DEBUG_MODE:
            print('---------------------------------------------------------------------------<')
        # print the result
        if DEBUG_MODE:
            self.cctable.print_detailed_feature_table()
        # store the result
        self.cctable.store_csv()

    def show_capture_info_in_debug_mode(self, capture: tuple[tree_sitter.Node, str], location: str, content: str) -> None:
        if DEBUG_MODE:
            print('\t└──', capture[0].type, ' : ', location)
            print('\t\t└── : ', content)

    #####################################################################################
    """ ------------------- Here are the find_XXX() functions ----------------------- """
    #####################################################################################

    # cctable will crop the byte stream 'content' to no more than 80 bytes before storing it
    # so don't worry about the length of 'content'

    # TEMPLATE
    def find_TEMPLATE_stl(self):
        pass

    def find_TEMPLATE_template(self):
        # Create a query
        query = CPP_LANGUAGE.query("""(template_declaration) @template_declaration""")
        # Run the query
        captures = query.captures(self.root)
        for capture in captures:
            if capture[1] == 'template_declaration':
                location = str(tuple(x + 1 for x in capture[0].start_point)) + \
                            '-' + str(tuple(x + 1 for x in capture[0].end_point))
                content = self.root.text[capture[0].start_byte : capture[0].end_byte]
                self.show_capture_info_in_debug_mode(capture, location, content)
                self.cctable.table["TEMPLATE"]["template"].append((location, content))
    
    def find_TEMPLATE_lambda(self):
        query = CPP_LANGUAGE.query("""(lambda_expression) @lambda_expression""")
        captures = query.captures(self.root)
        for capture in captures:
            if capture[1] == 'lambda_expression':
                location = str(tuple(x + 1 for x in capture[0].start_point)) + \
                            '-' + str(tuple(x + 1 for x in capture[0].end_point))
                content = self.root.text[capture[0].start_byte : capture[0].end_byte]
                self.show_capture_info_in_debug_mode(capture, location, content)
                self.cctable.table["TEMPLATE"]["lambda"].append((location, content))
    
    def find_TEMPLATE_namespace(self):
        query = CPP_LANGUAGE.query("""(namespace_definition) @namespace_definition""")
        captures = query.captures(self.root)
        for capture in captures:
            if DEBUG_MODE:
                print('\t└──', capture[0].type, ' : ')
            if capture[1] == 'namespace_definition':
                location = str(tuple(x + 1 for x in capture[0].start_point)) + \
                            '-' + str(tuple(x + 1 for x in capture[0].end_point))
                content = self.root.text[capture[0].start_byte : capture[0].end_byte]
                self.show_capture_info_in_debug_mode(capture, location, content)
                self.cctable.table["TEMPLATE"]["namespace"].append((location, content))
    
    def find_TEMPLATE_macroconcat(self):
        query = CPP_LANGUAGE.query("""(preproc_arg) @preproc_arg""")
        captures = query.captures(self.root)
        for capture in captures:
            if capture[1] == 'preproc_arg':
                preproc_text = self.root.text[capture[0].start_byte : capture[0].end_byte]
                for i in range(len(preproc_text) - len(b'##')):
                    if preproc_text[i:i+len(b'##')] == b'##':
                        # here loc_left and loc_right are the location of the '##' in the source file
                        loc_left = (capture[0].start_point[0] + 1, capture[0].start_point[1] + i + 1)
                        loc_right = (capture[0].start_point[0] + 1, capture[0].start_point[1] + i + len(b'##') + 1)
                        location = str(loc_left) + '-' + str(loc_right)
                        # here content is the full definition of the macro
                        content = self.root.text[capture[0].start_byte : capture[0].end_byte]
                        self.show_capture_info_in_debug_mode(capture, location, content)
                        self.cctable.table["TEMPLATE"]["macroconcat"].append((location, content))

    # CONCURRENCY
    def find_CONCURRENCY_thread_local(self):
        query = CPP_LANGUAGE.query("""(storage_class_specifier) @storage_class_specifier""")
        captures = query.captures(self.root)
        for capture in captures:
            if capture[1] == 'storage_class_specifier':
                location = str(tuple(x + 1 for x in capture[0].start_point)) + \
                            '-' + str(tuple(x + 1 for x in capture[0].end_point))
                # here we use capture[0].parent.text to get the content of the node
                content = capture[0].parent.text
                org_content = capture[0].text
                if b'thread_local' in org_content:
                    self.show_capture_info_in_debug_mode(capture, location, content)
                    self.cctable.table["CONCURRENCY"]["thread_local"].append((location, content))

    def find_CONCURRENCY_volatile(self):
        query = CPP_LANGUAGE.query("""(type_qualifier) @type_qualifier""")
        captures = query.captures(self.root)
        for capture in captures:
            if capture[1] == 'type_qualifier':
                location = str(tuple(x + 1 for x in capture[0].start_point)) + \
                            '-' + str(tuple(x + 1 for x in capture[0].end_point))
                # use capture[0].parent.text
                content = capture[0].parent.text
                org_content = capture[0].text
                if b'volatile' in org_content:
                    self.show_capture_info_in_debug_mode(capture, location, content)
                    self.cctable.table["CONCURRENCY"]["volatile"].append((location, content))

    # MEMORY
    def find_MEMORY_destructor(self):
        query = CPP_LANGUAGE.query("""(destructor_name) @destructor_name""")
        captures = query.captures(self.root)
        for capture in captures:
            if capture[1] == 'destructor_name':
                location = str(tuple(x + 1 for x in capture[0].start_point)) + \
                            '-' + str(tuple(x + 1 for x in capture[0].end_point))
                # use capture[0].parent.text
                content = capture[0].parent.text
                org_content = capture[0].text
                if b'~' in org_content:
                    self.show_capture_info_in_debug_mode(capture, location, content)
                    self.cctable.table["MEMORY"]["destructor"].append((location, content))

    def find_MEMORY_smartptr(self):
        query = CPP_LANGUAGE.query("""(type_identifier) @type_identifier""")
        captures = query.captures(self.root)
        for capture in captures:
            if capture[1] == 'type_identifier':
                location = str(tuple(x + 1 for x in capture[0].start_point)) + \
                            '-' + str(tuple(x + 1 for x in capture[0].end_point))
                # use capture[0].parent.text
                content = capture[0].parent.text
                org_content = capture[0].text
                if b'shared_ptr' in org_content or b'unique_ptr' in org_content:
                    self.show_capture_info_in_debug_mode(capture, location, content)
                    self.cctable.table["MEMORY"]["smartptr"].append((location, content))

    def find_MEMORY_directinit(self):
        pass

    def find_EXCEPTION_trycatch(self):
        pass

    def find_EXCEPTION_noexcept(self):
        pass

    def find_POLYMORPHISM_nestedclass(self):
        pass

    def find_POLYMORPHISM_operator(self):
        pass

    def find_POLYMORPHISM_virtual_overload(self):
        pass

    def find_POLYMORPHISM_castconvert(self):
        pass

    def find_REFERENCE_friend(self):
        pass

    def find_REFERENCE_this(self):
        pass

    def find_REFERENCE_using(self):
        pass

    def find_FUNCTION_typedef(self):
        pass

    def find_TYPESYS_typedef(self):
        pass

    def find_TYPESYS_union(self):
        pass

    def find_TYPESYS_decltype(self):
        pass

    def find_TYPESYS_using(self):
        pass

    def find_TYPESYS_constexpr(self):
        pass
    


if __name__ == '__main__':
    try:
        SRC_FILE_PATH = sys.argv[1]
        assert os.path.exists(SRC_FILE_PATH)
    except:
        print("Please input the target file path")
        sys.exit(-1)
    try:
        if sys.argv[2] == '1' or sys.argv[2] == 'True' or sys.argv[2] == 'true':
            DEBUG_MODE = True
    except:
        pass
    try:
        FEATURE_TABLE_PATH = sys.argv[3]
    except:
        pass
    try:
        DETAILED_INFO_PATH = sys.argv[4]
    except:
        pass
    if os.path.exists(FEATURE_TABLE_PATH):
        STORE_FEATURE_TABLE = True
    if os.path.exists(DETAILED_INFO_PATH):
        STORE_DETAILED_INFO = True
    scanner = Scanner(SRC_FILE_PATH)
    scanner.run()