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

    #####################################################################################
    """ ------------------- Here are the find_XXX() functions ----------------------- """
    #####################################################################################

    def find_TEMPLATE_stl(self):
        pass

    def find_TEMPLATE_template(self):
        # Create a query
        query = CPP_LANGUAGE.query("""(template_declaration) @template_declaration""")
        # Run the query
        captures = query.captures(self.root)
        # print the result
        if DEBUG_MODE:
            print('In find_TEMPLATE_template, captures: ')
        for capture in captures:
            if DEBUG_MODE:
                print('\t└──', capture[0].type, ' : ', capture[1])
            if capture[1] == 'template_declaration':
                location = str(capture[0].start_byte) + '-' + str(capture[0].end_byte)
                content = self.root.text[capture[0].start_byte : capture[0].end_byte]
                self.cctable.table["TEMPLATE"]["template"].append((location, content))
    
    def find_TEMPLATE_lambda(self):
        query = CPP_LANGUAGE.query("""(lambda_expression) @lambda_expression""")
        captures = query.captures(self.root)
        if DEBUG_MODE:
            print('In find_TEMPLATE_lambda, captures: ')
        for capture in captures:
            if DEBUG_MODE:
                print('\t└──', capture[0].type, ' : ', capture[1])
            if capture[1] == 'lambda_expression':
                location = str(capture[0].start_byte) + '-' + str(capture[0].end_byte)
                content = self.root.text[capture[0].start_byte : capture[0].end_byte]
                self.cctable.table["TEMPLATE"]["lambda"].append((location, content))
    
    def find_TEMPLATE_namespace(self):
        # Create a query
        query = CPP_LANGUAGE.query("""(namespace_definition) @namespace_definition""")
        # Run the query
        captures = query.captures(self.root)
        # print the result
        if DEBUG_MODE:
            print('In find_TEMPLATE_namespace, captures: ')
        for capture in captures:
            if DEBUG_MODE:
                print('\t└──', capture[0].type, ' : ', capture[1])
            if capture[1] == 'namespace_definition':
                location = str(capture[0].start_byte) + '-' + str(capture[0].end_byte)
                content = self.root.text[capture[0].start_byte : capture[0].end_byte]
                self.cctable.table["TEMPLATE"]["namespace"].append((location, content))
    
    def find_TEMPLATE_macroconcat(self):
        pass

    def find_CONCURRENCY_thread_local(self):
        pass

    def find_CONCURRENCY_votatile(self):
        pass

    def find_MEMORY_destructor(self):
        pass

    def find_MEMORY_smartptr(self):
        pass

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