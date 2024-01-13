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
            location = str(tuple(x + 1 for x in capture[0].start_point)) + \
                        '-' + str(tuple(x + 1 for x in capture[0].end_point))
            content = self.root.text[capture[0].start_byte : capture[0].end_byte]
            self.show_capture_info_in_debug_mode(capture, location, content)
            self.cctable.table["TEMPLATE"]["template"].append((location, content))
    
    def find_TEMPLATE_lambda(self):
        query = CPP_LANGUAGE.query("""(lambda_expression) @lambda_expression""")
        captures = query.captures(self.root)
        for capture in captures:
            location = str(tuple(x + 1 for x in capture[0].start_point)) + \
                        '-' + str(tuple(x + 1 for x in capture[0].end_point))
            content = self.root.text[capture[0].start_byte : capture[0].end_byte]
            self.show_capture_info_in_debug_mode(capture, location, content)
            self.cctable.table["TEMPLATE"]["lambda"].append((location, content))
    
    def find_TEMPLATE_namespace(self):
        query = CPP_LANGUAGE.query("""(namespace_definition) @namespace_definition""")
        captures = query.captures(self.root)
        for capture in captures:
            location = str(tuple(x + 1 for x in capture[0].start_point)) + \
                        '-' + str(tuple(x + 1 for x in capture[0].end_point))
            content = self.root.text[capture[0].start_byte : capture[0].end_byte]
            self.show_capture_info_in_debug_mode(capture, location, content)
            self.cctable.table["TEMPLATE"]["namespace"].append((location, content))
    
    def find_TEMPLATE_macroconcat(self):
        query = CPP_LANGUAGE.query("""(preproc_arg) @preproc_arg""")
        captures = query.captures(self.root)
        for capture in captures:
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
            location = str(tuple(x + 1 for x in capture[0].start_point)) + \
                        '-' + str(tuple(x + 1 for x in capture[0].end_point))
            # use capture[0].parent.text
            content = capture[0].parent.text
            org_content = capture[0].text
            if b'shared_ptr' in org_content or b'unique_ptr' in org_content:
                self.show_capture_info_in_debug_mode(capture, location, content)
                self.cctable.table["MEMORY"]["smartptr"].append((location, content))

    def find_MEMORY_directinit(self):
        """
        Direct initialization is performed in the following situations:
        T object ( arg );
        T object ( arg1, arg2, ... );       (1)	
        T object { arg };
        T object { arg1, arg2, ... };       (2)	(since C++11)
        # T ( other )
        # T ( arg1, arg2, ... );            (3)	
        static_cast< T >( other )	        (4)	
        new T(args, ...)	                (5)	
        Class::Class():member(args...){...}	(6)	
        [arg](){...}                        (7)	(since C++11)
        """
        query = CPP_LANGUAGE.query(
            """(declaration
                (type_qualifier)*
                type: (_)
                declarator: [
                    (init_declarator
                    declarator: (identifier) @identifier_type1
                    value: [(argument_list (_)+)
                            (initializer_list (_)+)])
                    (function_declarator
                    declarator: (identifier) @identifier_type2
                    parameters: (parameter_list (_)+))])
                (call_expression
                    function: (template_function
                        name: (identifier) @identifier_maybe_static_cast
                        arguments: (template_argument_list (_)+))
                    arguments: (argument_list (_)+))
                (new_expression
                    type: (_)
                    arguments: (argument_list (_)+)) @new_expression
                (function_definition
                    declarator: (function_declarator)
                    (field_initializer_list
                        (field_initializer)+ )@field_initializer )
                (lambda_expression
                    captures: (lambda_capture_specifier (_)+)) @lambda_expression""")
        captures = query.captures(self.root)
        for capture in captures:
            invalid_directinit = False
            # '=' can't show up between identifier and initializer_list
            if capture[1] == "identifier_type1":
                identifier_end = capture[0].end_byte
                for child in capture[0].parent.children:
                    if child.type == "initializer_list":
                        initializer_list_start = child.start_byte
                        if b'=' in self.root.text[identifier_end:initializer_list_start]:
                            invalid_directinit = True
                            break
            if invalid_directinit:
                continue
            location = str(tuple(x + 1 for x in capture[0].start_point)) + \
                        '-' + str(tuple(x + 1 for x in capture[0].end_point))
            # use capture[0].parent.text
            content = capture[0].parent.text
            self.show_capture_info_in_debug_mode(capture, location, content)
            self.cctable.table["MEMORY"]["directinit"].append((location, content))

    # EXCEPTION
    def find_EXCEPTION_trycatch(self):
        query = CPP_LANGUAGE.query("""(try_statement) @try_statement""")
        captures = query.captures(self.root)
        for capture in captures:
            location = str(tuple(x + 1 for x in capture[0].start_point)) + \
                        '-' + str(tuple(x + 1 for x in capture[0].end_point))
            content = capture[0].text
            self.show_capture_info_in_debug_mode(capture, location, content)
            self.cctable.table["EXCEPTION"]["trycatch"].append((location, content))

    def find_EXCEPTION_noexcept(self):
        query = CPP_LANGUAGE.query("""(noexcept) @noexcept""")
        captures = query.captures(self.root)
        for capture in captures:
            location = str(tuple(x + 1 for x in capture[0].start_point)) + \
                        '-' + str(tuple(x + 1 for x in capture[0].end_point))
            # use capture[0].parent.text
            content = capture[0].parent.text
            self.show_capture_info_in_debug_mode(capture, location, content)
            self.cctable.table["EXCEPTION"]["noexcept"].append((location, content))

    def find_POLYMORPHISM_nestedclass(self):
        pass

    def find_POLYMORPHISM_operator(self):
        query = CPP_LANGUAGE.query("""(function_declarator(operator_name)) @POLYMORPHISM_operator""")
        captures = query.captures(self.root)
        for capture in captures:
            location = str(tuple(x + 1 for x in capture[0].start_point)) + \
                       '-' + str(tuple(x + 1 for x in capture[0].end_point))
            # use capture[0].parent.text
            content = capture[0].parent.text
            self.show_capture_info_in_debug_mode(capture, location, content)
            self.cctable.table["POLYMORPHISM"]["operator"].append((location, content))

    def find_POLYMORPHISM_function_overload(self):
        pass

    def find_POLYMORPHISM_virtual_override(self):
        pass
        # query = CPP_LANGUAGE.query("""[(class_specifier) @class_specifier
        # (struct_specifier) @struct_specifier]""")
        # items = query.captures(self.root)
        # name2vir = {}
        # for item, _ in items:
        #     query = CPP_LANGUAGE.query("""(virtual) @virtual""")
        #     virs = query.captures(item)
        #     if len(virs) > 0:
        #         query = CPP_LANGUAGE.query("""(type_identifier) @type_identifier""")
        #         names = query.captures(item)
        #         name = names[0]
        #         item_name = name[0].text
        #         if item_name not in name2vir.keys():
        #             name2vir[item_name] = []
        #         query = CPP_LANGUAGE.query("""(field_declaration) @field_declaration""")
        #         vir_funcs = query.captures(item)
        #         for vir_fun in vir_funcs:
        #             content = vir_fun[0].parent.text
        #             print(content)
        #             if "virtual" in str(content):
        #                 name2vir[item_name].append(content)

    def find_POLYMORPHISM_castconvert(self):
        query = CPP_LANGUAGE.query("""(template_function) @template_function""")
        captures = query.captures(self.root)
        for capture in captures:
            location = str(tuple(x + 1 for x in capture[0].start_point)) + \
                       '-' + str(tuple(x + 1 for x in capture[0].end_point))
            # use capture[0].parent.text
            content = capture[0].parent.text
            if "_cast" in str(content):
                self.show_capture_info_in_debug_mode(capture, location, content)
                self.cctable.table["POLYMORPHISM"]["castconvert"].append((location, content))

    def find_REFERENCE_friend(self):
        query = CPP_LANGUAGE.query("""(friend_declaration) @friend_declaration""")
        captures = query.captures(self.root)
        for capture in captures:
            location = str(tuple(x + 1 for x in capture[0].start_point)) + \
                       '-' + str(tuple(x + 1 for x in capture[0].end_point))
            # use capture[0].parent.text
            content = capture[0].parent.text
            self.show_capture_info_in_debug_mode(capture, location, content)
            self.cctable.table["REFERENCE"]["friend"].append((location, content))

    def find_REFERENCE_this(self):
        query = CPP_LANGUAGE.query("""(this) @this""")
        captures = query.captures(self.root)
        for capture in captures:
            location = str(tuple(x + 1 for x in capture[0].start_point)) + \
                       '-' + str(tuple(x + 1 for x in capture[0].end_point))
            # use capture[0].parent.text
            content = capture[0].parent.text
            self.show_capture_info_in_debug_mode(capture, location, content)
            self.cctable.table["REFERENCE"]["this"].append((location, content))

    def find_REFERENCE_using(self):
        query = CPP_LANGUAGE.query("""(using_declaration) @using_declaration""")
        captures = query.captures(self.root)
        for capture in captures:
            location = str(tuple(x + 1 for x in capture[0].start_point)) + \
                       '-' + str(tuple(x + 1 for x in capture[0].end_point))
            # use capture[0].parent.text
            content = capture[0].parent.text
            if "using" in str(content):
                self.show_capture_info_in_debug_mode(capture, location, content)
                self.cctable.table["REFERENCE"]["using"].append((location, content))

    def find_FUNCTION_typedef(self):
        query = CPP_LANGUAGE.query("""(parameter_list) @parameter_list""")
        captures = query.captures(self.root)
        for capture in captures:
            location = str(tuple(x + 1 for x in capture[0].start_point)) + \
                       '-' + str(tuple(x + 1 for x in capture[0].end_point))
            # use capture[0].parent.text
            content = capture[0].parent.text
            if "..." in str(content):
                self.show_capture_info_in_debug_mode(capture, location, content)
                self.cctable.table["FUNCTION"]["typedef"].append((location, content))

    def find_TYPESYS_typedef(self):
        query = CPP_LANGUAGE.query("""(type_definition) @type_definition""")
        captures = query.captures(self.root)
        for capture in captures:
            location = str(tuple(x + 1 for x in capture[0].start_point)) + \
                       '-' + str(tuple(x + 1 for x in capture[0].end_point))
            # use capture[0].parent.text
            content = capture[0].parent.text
            if "typedef" in str(content):
                self.show_capture_info_in_debug_mode(capture, location, content)
                self.cctable.table["TYPESYS"]["typedef"].append((location, content))

    def find_TYPESYS_union(self):
        query = CPP_LANGUAGE.query("""(union_specifier) @union_specifier""")
        captures = query.captures(self.root)
        for capture in captures:
            location = str(tuple(x + 1 for x in capture[0].start_point)) + \
                       '-' + str(tuple(x + 1 for x in capture[0].end_point))
            # use capture[0].parent.text
            content = capture[0].parent.text
            if "union" in str(content):
                self.show_capture_info_in_debug_mode(capture, location, content)
                self.cctable.table["TYPESYS"]["union"].append((location, content))

    def find_TYPESYS_decltype(self):
        query = CPP_LANGUAGE.query("""(decltype) @decltype""")
        captures = query.captures(self.root)
        for capture in captures:
            location = str(tuple(x + 1 for x in capture[0].start_point)) + \
                       '-' + str(tuple(x + 1 for x in capture[0].end_point))
            # use capture[0].parent.text
            content = capture[0].parent.text
            if "decltype" in str(content):
                self.show_capture_info_in_debug_mode(capture, location, content)
                self.cctable.table["TYPESYS"]["decltype"].append((location, content))

    def find_TYPESYS_using(self):
        query = CPP_LANGUAGE.query("""(alias_declaration) @alias_declaration""")
        captures = query.captures(self.root)
        for capture in captures:
            location = str(tuple(x + 1 for x in capture[0].start_point)) + \
                       '-' + str(tuple(x + 1 for x in capture[0].end_point))
            # use capture[0].parent.text
            content = capture[0].parent.text
            if "using" in str(content):
                self.show_capture_info_in_debug_mode(capture, location, content)
                self.cctable.table["TYPESYS"]["using"].append((location, content))

    def find_TYPESYS_constexpr(self):
        query = CPP_LANGUAGE.query("""(type_qualifier) @type_qualifier""")
        captures = query.captures(self.root)
        for capture in captures:
            location = str(tuple(x + 1 for x in capture[0].start_point)) + \
                       '-' + str(tuple(x + 1 for x in capture[0].end_point))
            # use capture[0].parent.text
            content = capture[0].parent.text
            if "constexpr" in str(content):
                self.show_capture_info_in_debug_mode(capture, location, content)
                self.cctable.table["TYPESYS"]["constexpr"].append((location, content))
    


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