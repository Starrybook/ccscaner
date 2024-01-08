from tree_sitter import Language, Parser
import sys
"""
@ccprinter.py
input:
	argv[1]: source file path
	argv[2]: print detailed info or not
	argv[3]: print sexp or not, or only print sexp
argv[1] is necessary
"""

# set the language
CPP_LANGUAGE = Language('build/my-languages.so', 'cpp')
cpp_parser = Parser()
cpp_parser.set_language(CPP_LANGUAGE)

# firstly, we need print_ast function to show the tree
def print_ast(node, indent='', print_text=False):
    print(indent + node.type, end='')
    if node.is_named and print_text:
        print(':  [>> ', node.text, ' <<]', end='')
    print()
    for child in node.children:
        print_ast(child, indent + '  ', print_text)

def print_root_sexp(node, indent=''):
    print(root_node.sexp())

if __name__ == '__main__':
    # set the target file and get tree
    target_file = ""
    print_tree = True
    print_detailed_info = False
    print_sexp = False
    try:
        target_file = sys.argv[1]
    except:
        print("Please input the target file path")
        sys.exit(-1)
    try:
        if sys.argv[2] == 'true' or sys.argv[2] == 'yes':
            print_detailed_info = True
    except:
        pass
    try:
        if sys.argv[3] == 'true' or sys.argv[2] == 'yes':
            print_sexp = True
        elif sys.argv[3] == 'only':
            print_sexp = True
            print_tree = False
    except:
        pass
    with open(target_file, "r", encoding='utf-8') as file:
        codes = file.read().encode('utf-8')
    tree = cpp_parser.parse(codes)
    root_node = tree.root_node
    if print_tree:
        print_ast(root_node, print_text=print_detailed_info)
    if print_sexp:
        print_root_sexp(root_node)
