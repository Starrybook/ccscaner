import tree_sitter
from tree_sitter import Language, Parser
import csv
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
        self.cctable = FeatureTable(DEBUG_MODE, STORE_FEATURE_TABLE, FEATURE_TABLE_PATH,
                                    STORE_DETAILED_INFO, DETAILED_INFO_PATH)
    
    def run(self) -> None:
        self.find_template_definitions()
        self.find_lambda_definitions()
        self.find_namespace_definitions()
        # TODO
        # print the result
        # if not STORE_FEATURE_TABLE:
        self.cctable.print_feature_table()
        # store the result
        self.cctable.store_csv()

    def find_template_definitions(self):
        # Create a query
        query = CPP_LANGUAGE.query("""(template_declaration) @template_declaration""")
        # Run the query
        captures = query.captures(self.root)
        # print the result
        if DEBUG_MODE:
            print('In find_template_definitions, captures: ')
        for capture in captures:
            if DEBUG_MODE:
                print('\t', capture[0].type, ' : ', capture[1])
            if capture[1] == 'template_declaration':
                self.cctable.table["MODULAR"]["template"].append(
                    self.root.text[capture[0].start_byte : capture[0].end_byte])
    
    def find_lambda_definitions(self):
        query = CPP_LANGUAGE.query("""(lambda_expression) @lambda_expression""")
        captures = query.captures(self.root)
        if DEBUG_MODE:
            print('In find_lambda_definitions, captures: ')
        for capture in captures:
            if DEBUG_MODE:
                print('\t', capture[0].type, ' : ', capture[1])
            if capture[1] == 'lambda_expression':
                self.cctable.table["MODULAR"]["lambda"].append(
                    self.root.text[capture[0].start_byte : capture[0].end_byte])
    
    def find_namespace_definitions(self):
        # Create a query
        query = CPP_LANGUAGE.query("""(namespace_definition) @namespace_definition""")
        # Run the query
        captures = query.captures(self.root)
        # print the result
        if DEBUG_MODE:
            print('In find_namespace_definitions, captures: ')
        for capture in captures:
            if DEBUG_MODE:
                print('\t', capture[0].type, ' : ', capture[1])
            if capture[1] == 'namespace_definition':
                self.cctable.table["MODULAR"]["namespace"].append(
                    self.root.text[capture[0].start_byte : capture[0].end_byte])
    


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