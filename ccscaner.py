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
            print('In find_reference_denominators: ')
        self.find_reference_denominators()
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
        # Strategy 1: find include difinitions that use common containers
        # array, vector, deque, forward_list, list, 
        # stack, queue, priority_queue, 
        # set, map, multiset, multimap,
        # unordered_set, unordered_map, unordered_multiset, unordered_multimap
        targets = [ b'<array>', b'<vector>', b'<deque>', b'<forward_list>', b'<list>',
                    b'<stack>', b'<queue>', b'<priority_queue>',
                    b'<set>', b'<map>', b'<multiset>', b'<multimap>',
                    b'<unordered_set>', b'<unordered_map>', b'<unordered_multiset>', b'<unordered_multimap>']
        query = CPP_LANGUAGE.query("""  (preproc_include
                                        path: (system_lib_string) @system_lib_string)""")
        captures = query.captures(self.root)
        for capture in captures:
            for item in targets:
                if item in capture[0].text:
                    location = str(tuple(x + 1 for x in capture[0].start_point)) + \
                                '-' + str(tuple(x + 1 for x in capture[0].end_point))
                    content = capture[0].parent.text
                    self.show_capture_info_in_debug_mode(capture, location, content)
                    self.cctable.table["TEMPLATE"]["stl"].append((location, content))

    def find_TEMPLATE_template(self):
        # Create a query
        query = CPP_LANGUAGE.query("""(template_declaration) @template_declaration""")
        # Run the query
        captures = query.captures(self.root)
        for capture in captures:
            location = str(tuple(x + 1 for x in capture[0].start_point)) + \
                        '-' + str(tuple(x + 1 for x in capture[0].end_point))
            content = capture[0].text
            self.show_capture_info_in_debug_mode(capture, location, content)
            self.cctable.table["TEMPLATE"]["template"].append((location, content))
    
    def find_TEMPLATE_lambda(self):
        query = CPP_LANGUAGE.query("""(lambda_expression) @lambda_expression""")
        captures = query.captures(self.root)
        for capture in captures:
            location = str(tuple(x + 1 for x in capture[0].start_point)) + \
                        '-' + str(tuple(x + 1 for x in capture[0].end_point))
            content = capture[0].text
            self.show_capture_info_in_debug_mode(capture, location, content)
            self.cctable.table["TEMPLATE"]["lambda"].append((location, content))
    
    def find_TEMPLATE_namespace(self):
        query = CPP_LANGUAGE.query("""(namespace_definition) @namespace_definition""")
        captures = query.captures(self.root)
        for capture in captures:
            location = str(tuple(x + 1 for x in capture[0].start_point)) + \
                        '-' + str(tuple(x + 1 for x in capture[0].end_point))
            content = capture[0].text
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
        # only consider type_identifier in declarations and function_definitions
        query_declarations = CPP_LANGUAGE.query("""(declaration) @declaration""")
        captures_declarations = query_declarations.captures(self.root)
        # query_declarations = CPP_LANGUAGE.query("""(function_definition
        #                                             type: (_)
        #                                             declarator: (function_declarator) @function_definition)""")
        # captures_declarations += query_declarations.captures(self.root)
        for capture_declarations in captures_declarations:
            query = CPP_LANGUAGE.query("""(type_identifier) @type_identifier""")
            captures = query.captures(capture_declarations[0])
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
        # [DFS] traverse the tree to find class_specifier (outmost layer)
        # when find a class_specifier, use query to find the inner class_specifiers
        # and don't visit its subnodes
        self.cursor.reset(self.root)
        flag_subtree_visited = False
        while True:
            if flag_subtree_visited:
                flag_subtree_visited = False
                if not self.cursor.goto_next_sibling():
                    if not self.cursor.goto_parent():
                        break
                    else:
                        flag_subtree_visited = True
                continue
            elif self.cursor.node.type == "class_specifier":
                query = CPP_LANGUAGE.query("""(class_specifier) @class_specifier""")
                for child in self.cursor.node.children:
                    captures = query.captures(child)
                    for capture in captures:
                        location = str(tuple(x + 1 for x in capture[0].start_point)) + \
                                    '-' + str(tuple(x + 1 for x in capture[0].end_point))
                        content = capture[0].text
                        if len(content) > 50:
                            content = content[:45] + b'...'
                        self.show_capture_info_in_debug_mode(capture, location, content)
                        self.cctable.table["POLYMORPHISM"]["nestedclass"].append((location, content))
                self.cursor.goto_parent()
                flag_subtree_visited = True
            elif self.cursor.goto_first_child():
                continue
            else:
                if not self.cursor.goto_next_sibling():
                    if not self.cursor.goto_parent():
                        break
                    else:
                        flag_subtree_visited = True
                continue

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
        # 获取节点的兄弟节点
        def get_siblings(node):
            parent = node.parent
            if parent:
                for child in parent.children:
                    if child.type == "virtual":
                        return False
            return True
        query = CPP_LANGUAGE.query("""(function_declarator) @function_declarator""")
        captures = query.captures(self.root)
        func_list = {}
        for capture in captures:
            if get_siblings(capture[0]):
                name = capture[0].text.split(b"(")[0]
                if name not in func_list.keys():
                    func_list[name] = []
                node_para_list = None
                for sibling in capture[0].children:
                    if sibling.type == "parameter_list":
                        node_para_list = sibling
                        break
                if node_para_list.text not in func_list[name]:
                    func_list[name].append(node_para_list.text)
        for capture in captures:
            location = str(tuple(x + 1 for x in capture[0].start_point)) + \
                       '-' + str(tuple(x + 1 for x in capture[0].end_point))
            # use capture[0].parent.text
            content = capture[0].parent.text
            name = capture[0].text.split(b"(")[0]
            if name in func_list and len(func_list[name]) > 1:
                self.show_capture_info_in_debug_mode(capture, location, content)
                self.cctable.table["POLYMORPHISM"]["function_overload"].append((location, content))

    def find_POLYMORPHISM_virtual_override(self):
        query = CPP_LANGUAGE.query("""(function_definition) @function_definition""")
        captures = query.captures(self.root)
        for capture in captures:
            location = str(tuple(x + 1 for x in capture[0].start_point)) + \
                       '-' + str(tuple(x + 1 for x in capture[0].end_point))
            content = capture[0].text
            if "override" in str(capture[0].text) or "final" in str(capture[0].text):
                self.show_capture_info_in_debug_mode(capture, location, content)
                self.cctable.table["POLYMORPHISM"]["virtual_override"].append((location, content))

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
            content = capture[0].text
            self.show_capture_info_in_debug_mode(capture, location, content)
            self.cctable.table["REFERENCE"]["friend"].append((location, content))

    def find_REFERENCE_this(self):
        query = CPP_LANGUAGE.query("""(this) @this""")
        captures = query.captures(self.root)
        for capture in captures:
            location = str(tuple(x + 1 for x in capture[0].start_point)) + \
                       '-' + str(tuple(x + 1 for x in capture[0].end_point))
            content = capture[0].text
            self.show_capture_info_in_debug_mode(capture, location, content)
            self.cctable.table["REFERENCE"]["this"].append((location, content))

    def find_REFERENCE_using(self):
        query = CPP_LANGUAGE.query("""(using_declaration) @using_declaration""")
        captures = query.captures(self.root)
        for capture in captures:
            location = str(tuple(x + 1 for x in capture[0].start_point)) + \
                       '-' + str(tuple(x + 1 for x in capture[0].end_point))
            content = capture[0].text
            if "using" in str(content):
                self.show_capture_info_in_debug_mode(capture, location, content)
                self.cctable.table["REFERENCE"]["using"].append((location, content))

    def find_FUNCTION_variparams(self):
        query = CPP_LANGUAGE.query("""(parameter_list) @parameter_list""")
        captures = query.captures(self.root)
        for capture in captures:
            location = str(tuple(x + 1 for x in capture[0].start_point)) + \
                       '-' + str(tuple(x + 1 for x in capture[0].end_point))
            # use capture[0].parent.text
            content = capture[0].parent.text
            if "..." in str(content):
                self.show_capture_info_in_debug_mode(capture, location, content)
                self.cctable.table["FUNCTION"]["variparams"].append((location, content))

    def find_TYPESYS_typedef(self):
        query = CPP_LANGUAGE.query("""(type_definition) @type_definition""")
        captures = query.captures(self.root)
        for capture in captures:
            location = str(tuple(x + 1 for x in capture[0].start_point)) + \
                       '-' + str(tuple(x + 1 for x in capture[0].end_point))
            content = capture[0].text
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
            content = capture[0].text
            if "decltype" in str(content):
                self.show_capture_info_in_debug_mode(capture, location, content)
                self.cctable.table["TYPESYS"]["decltype"].append((location, content))

    def find_TYPESYS_using(self):
        query = CPP_LANGUAGE.query("""(alias_declaration) @alias_declaration""")
        captures = query.captures(self.root)
        for capture in captures:
            location = str(tuple(x + 1 for x in capture[0].start_point)) + \
                       '-' + str(tuple(x + 1 for x in capture[0].end_point))
            content = capture[0].text
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
    
    #####################################################################################
    """ ------------------- Statistical Reference Denominators  --------------------- """
    #####################################################################################
    def find_reference_denominators(self):
        # file_num
        self.cctable.reference_table["file_num"] = 1
        # line_num
        self.cctable.reference_table["line_num"] = self.root.end_point[0]
        # macros
        # use the count of preproc_def as the count of macros
        query = CPP_LANGUAGE.query("""(preproc_arg) @preproc_arg""")
        captures = query.captures(self.root)
        self.cctable.reference_table["macros"] = len(captures)
        # def_functions
        query = CPP_LANGUAGE.query("""(function_definition) @function_definition""")
        captures = query.captures(self.root)
        self.cctable.reference_table["def_functions"] = len(captures)
        # def_classes
        query = CPP_LANGUAGE.query("""(class_specifier) @class_specifier""")
        captures = query.captures(self.root)
        self.cctable.reference_table["def_classes"] = len(captures)
        # def_variables
        # use the count of declarator as the count of variables (instead of declarations)
        # include field_declaration
        # difination of functions is also included
        query = CPP_LANGUAGE.query("""
                                   (declaration
                                        type: (_)
                                        declarator: (_) @declarator)
                                   (field_declaration
                                        type: (_)
                                        declarator: (_) @declarator)
                                   (function_definition
                                        type: (_)
                                        declarator: (_) @declarator)
                                   (parameter_declaration
                                        type: (_)
                                        declarator: (_) @declarator)""")
        captures = query.captures(self.root)
        self.cctable.reference_table["def_variables"] = len(captures)
        if DEBUG_MODE:
            print('reference_table:')
            print(self.cctable.reference_table)
        return


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
