translation_unit:  [>>  b'#include <vector>\n#include <set>\n#include <map>\n#include <queue>\n#include <stack>\n#include <algorithm>\nvoid main()\n{\n    std::vector<int> Myvector = {5, 2, 8, 1, 7, 3};\n    Myvector.push_back(6);\n    std::stack<int> myStack;\n    myStack.push(10);\n    myStack.pop();\n    std::set<int> mySet = {4, 2, 1, 3, 5};\n    mySet.insert(6);\n    std::queue<int> myQueue;\n    myQueue.push(30);\n    myQueue.pop();\n    std::map<std::string, int> myMap = {{"One", 1}, {"Two", 2}, {"Three", 3}};\n    myMap["Four"] = 4;\n    std::sort(Myvector.begin(), Myvector.end());\n}\n'  <<]
  preproc_include:  [>>  b'#include <vector>\n'  <<]
    #include
    system_lib_string:  [>>  b'<vector>'  <<]
  preproc_include:  [>>  b'#include <set>\n'  <<]
    #include
    system_lib_string:  [>>  b'<set>'  <<]
  preproc_include:  [>>  b'#include <map>\n'  <<]
    #include
    system_lib_string:  [>>  b'<map>'  <<]
  preproc_include:  [>>  b'#include <queue>\n'  <<]
    #include
    system_lib_string:  [>>  b'<queue>'  <<]
  preproc_include:  [>>  b'#include <stack>\n'  <<]
    #include
    system_lib_string:  [>>  b'<stack>'  <<]
  preproc_include:  [>>  b'#include <algorithm>\n'  <<]
    #include
    system_lib_string:  [>>  b'<algorithm>'  <<]
  function_definition:  [>>  b'void main()\n{\n    std::vector<int> Myvector = {5, 2, 8, 1, 7, 3};\n    Myvector.push_back(6);\n    std::stack<int> myStack;\n    myStack.push(10);\n    myStack.pop();\n    std::set<int> mySet = {4, 2, 1, 3, 5};\n    mySet.insert(6);\n    std::queue<int> myQueue;\n    myQueue.push(30);\n    myQueue.pop();\n    std::map<std::string, int> myMap = {{"One", 1}, {"Two", 2}, {"Three", 3}};\n    myMap["Four"] = 4;\n    std::sort(Myvector.begin(), Myvector.end());\n}'  <<]
    primitive_type:  [>>  b'void'  <<]
    function_declarator:  [>>  b'main()'  <<]
      identifier:  [>>  b'main'  <<]
      parameter_list:  [>>  b'()'  <<]
        (
        )
    compound_statement:  [>>  b'{\n    std::vector<int> Myvector = {5, 2, 8, 1, 7, 3};\n    Myvector.push_back(6);\n    std::stack<int> myStack;\n    myStack.push(10);\n    myStack.pop();\n    std::set<int> mySet = {4, 2, 1, 3, 5};\n    mySet.insert(6);\n    std::queue<int> myQueue;\n    myQueue.push(30);\n    myQueue.pop();\n    std::map<std::string, int> myMap = {{"One", 1}, {"Two", 2}, {"Three", 3}};\n    myMap["Four"] = 4;\n    std::sort(Myvector.begin(), Myvector.end());\n}'  <<]
      {
      declaration:  [>>  b'std::vector<int> Myvector = {5, 2, 8, 1, 7, 3};'  <<]
        qualified_identifier:  [>>  b'std::vector<int>'  <<]
          namespace_identifier:  [>>  b'std'  <<]
          ::
          template_type:  [>>  b'vector<int>'  <<]
            type_identifier:  [>>  b'vector'  <<]
            template_argument_list:  [>>  b'<int>'  <<]
              <
              type_descriptor:  [>>  b'int'  <<]
                primitive_type:  [>>  b'int'  <<]
              >
        init_declarator:  [>>  b'Myvector = {5, 2, 8, 1, 7, 3}'  <<]
          identifier:  [>>  b'Myvector'  <<]
          =
          initializer_list:  [>>  b'{5, 2, 8, 1, 7, 3}'  <<]
            {
            number_literal:  [>>  b'5'  <<]
            ,
            number_literal:  [>>  b'2'  <<]
            ,
            number_literal:  [>>  b'8'  <<]
            ,
            number_literal:  [>>  b'1'  <<]
            ,
            number_literal:  [>>  b'7'  <<]
            ,
            number_literal:  [>>  b'3'  <<]
            }
        ;
      expression_statement:  [>>  b'Myvector.push_back(6);'  <<]
        call_expression:  [>>  b'Myvector.push_back(6)'  <<]
          field_expression:  [>>  b'Myvector.push_back'  <<]
            identifier:  [>>  b'Myvector'  <<]
            .
            field_identifier:  [>>  b'push_back'  <<]
          argument_list:  [>>  b'(6)'  <<]
            (
            number_literal:  [>>  b'6'  <<]
            )
        ;
      declaration:  [>>  b'std::stack<int> myStack;'  <<]
        qualified_identifier:  [>>  b'std::stack<int>'  <<]
          namespace_identifier:  [>>  b'std'  <<]
          ::
          template_type:  [>>  b'stack<int>'  <<]
            type_identifier:  [>>  b'stack'  <<]
            template_argument_list:  [>>  b'<int>'  <<]
              <
              type_descriptor:  [>>  b'int'  <<]
                primitive_type:  [>>  b'int'  <<]
              >
        identifier:  [>>  b'myStack'  <<]
        ;
      expression_statement:  [>>  b'myStack.push(10);'  <<]
        call_expression:  [>>  b'myStack.push(10)'  <<]
          field_expression:  [>>  b'myStack.push'  <<]
            identifier:  [>>  b'myStack'  <<]
            .
            field_identifier:  [>>  b'push'  <<]
          argument_list:  [>>  b'(10)'  <<]
            (
            number_literal:  [>>  b'10'  <<]
            )
        ;
      expression_statement:  [>>  b'myStack.pop();'  <<]
        call_expression:  [>>  b'myStack.pop()'  <<]
          field_expression:  [>>  b'myStack.pop'  <<]
            identifier:  [>>  b'myStack'  <<]
            .
            field_identifier:  [>>  b'pop'  <<]
          argument_list:  [>>  b'()'  <<]
            (
            )
        ;
      declaration:  [>>  b'std::set<int> mySet = {4, 2, 1, 3, 5};'  <<]
        qualified_identifier:  [>>  b'std::set<int>'  <<]
          namespace_identifier:  [>>  b'std'  <<]
          ::
          template_type:  [>>  b'set<int>'  <<]
            type_identifier:  [>>  b'set'  <<]
            template_argument_list:  [>>  b'<int>'  <<]
              <
              type_descriptor:  [>>  b'int'  <<]
                primitive_type:  [>>  b'int'  <<]
              >
        init_declarator:  [>>  b'mySet = {4, 2, 1, 3, 5}'  <<]
          identifier:  [>>  b'mySet'  <<]
          =
          initializer_list:  [>>  b'{4, 2, 1, 3, 5}'  <<]
            {
            number_literal:  [>>  b'4'  <<]
            ,
            number_literal:  [>>  b'2'  <<]
            ,
            number_literal:  [>>  b'1'  <<]
            ,
            number_literal:  [>>  b'3'  <<]
            ,
            number_literal:  [>>  b'5'  <<]
            }
        ;
      expression_statement:  [>>  b'mySet.insert(6);'  <<]
        call_expression:  [>>  b'mySet.insert(6)'  <<]
          field_expression:  [>>  b'mySet.insert'  <<]
            identifier:  [>>  b'mySet'  <<]
            .
            field_identifier:  [>>  b'insert'  <<]
          argument_list:  [>>  b'(6)'  <<]
            (
            number_literal:  [>>  b'6'  <<]
            )
        ;
      declaration:  [>>  b'std::queue<int> myQueue;'  <<]
        qualified_identifier:  [>>  b'std::queue<int>'  <<]
          namespace_identifier:  [>>  b'std'  <<]
          ::
          template_type:  [>>  b'queue<int>'  <<]
            type_identifier:  [>>  b'queue'  <<]
            template_argument_list:  [>>  b'<int>'  <<]
              <
              type_descriptor:  [>>  b'int'  <<]
                primitive_type:  [>>  b'int'  <<]
              >
        identifier:  [>>  b'myQueue'  <<]
        ;
      expression_statement:  [>>  b'myQueue.push(30);'  <<]
        call_expression:  [>>  b'myQueue.push(30)'  <<]
          field_expression:  [>>  b'myQueue.push'  <<]
            identifier:  [>>  b'myQueue'  <<]
            .
            field_identifier:  [>>  b'push'  <<]
          argument_list:  [>>  b'(30)'  <<]
            (
            number_literal:  [>>  b'30'  <<]
            )
        ;
      expression_statement:  [>>  b'myQueue.pop();'  <<]
        call_expression:  [>>  b'myQueue.pop()'  <<]
          field_expression:  [>>  b'myQueue.pop'  <<]
            identifier:  [>>  b'myQueue'  <<]
            .
            field_identifier:  [>>  b'pop'  <<]
          argument_list:  [>>  b'()'  <<]
            (
            )
        ;
      declaration:  [>>  b'std::map<std::string, int> myMap = {{"One", 1}, {"Two", 2}, {"Three", 3}};'  <<]
        qualified_identifier:  [>>  b'std::map<std::string, int>'  <<]
          namespace_identifier:  [>>  b'std'  <<]
          ::
          template_type:  [>>  b'map<std::string, int>'  <<]
            type_identifier:  [>>  b'map'  <<]
            template_argument_list:  [>>  b'<std::string, int>'  <<]
              <
              type_descriptor:  [>>  b'std::string'  <<]
                qualified_identifier:  [>>  b'std::string'  <<]
                  namespace_identifier:  [>>  b'std'  <<]
                  ::
                  type_identifier:  [>>  b'string'  <<]
              ,
              type_descriptor:  [>>  b'int'  <<]
                primitive_type:  [>>  b'int'  <<]
              >
        init_declarator:  [>>  b'myMap = {{"One", 1}, {"Two", 2}, {"Three", 3}}'  <<]
          identifier:  [>>  b'myMap'  <<]
          =
          initializer_list:  [>>  b'{{"One", 1}, {"Two", 2}, {"Three", 3}}'  <<]
            {
            initializer_list:  [>>  b'{"One", 1}'  <<]
              {
              string_literal:  [>>  b'"One"'  <<]
                "
                string_content:  [>>  b'One'  <<]
                "
              ,
              number_literal:  [>>  b'1'  <<]
              }
            ,
            initializer_list:  [>>  b'{"Two", 2}'  <<]
              {
              string_literal:  [>>  b'"Two"'  <<]
                "
                string_content:  [>>  b'Two'  <<]
                "
              ,
              number_literal:  [>>  b'2'  <<]
              }
            ,
            initializer_list:  [>>  b'{"Three", 3}'  <<]
              {
              string_literal:  [>>  b'"Three"'  <<]
                "
                string_content:  [>>  b'Three'  <<]
                "
              ,
              number_literal:  [>>  b'3'  <<]
              }
            }
        ;
      expression_statement:  [>>  b'myMap["Four"] = 4;'  <<]
        assignment_expression:  [>>  b'myMap["Four"] = 4'  <<]
          subscript_expression:  [>>  b'myMap["Four"]'  <<]
            identifier:  [>>  b'myMap'  <<]
            subscript_argument_list:  [>>  b'["Four"]'  <<]
              [
              string_literal:  [>>  b'"Four"'  <<]
                "
                string_content:  [>>  b'Four'  <<]
                "
              ]
          =
          number_literal:  [>>  b'4'  <<]
        ;
      expression_statement:  [>>  b'std::sort(Myvector.begin(), Myvector.end());'  <<]
        call_expression:  [>>  b'std::sort(Myvector.begin(), Myvector.end())'  <<]
          qualified_identifier:  [>>  b'std::sort'  <<]
            namespace_identifier:  [>>  b'std'  <<]
            ::
            identifier:  [>>  b'sort'  <<]
          argument_list:  [>>  b'(Myvector.begin(), Myvector.end())'  <<]
            (
            call_expression:  [>>  b'Myvector.begin()'  <<]
              field_expression:  [>>  b'Myvector.begin'  <<]
                identifier:  [>>  b'Myvector'  <<]
                .
                field_identifier:  [>>  b'begin'  <<]
              argument_list:  [>>  b'()'  <<]
                (
                )
            ,
            call_expression:  [>>  b'Myvector.end()'  <<]
              field_expression:  [>>  b'Myvector.end'  <<]
                identifier:  [>>  b'Myvector'  <<]
                .
                field_identifier:  [>>  b'end'  <<]
              argument_list:  [>>  b'()'  <<]
                (
                )
            )
        ;
      }
(translation_unit (preproc_include path: (system_lib_string)) (preproc_include path: (system_lib_string)) (preproc_include path: (system_lib_string)) (preproc_include path: (system_lib_string)) (preproc_include path: (system_lib_string)) (preproc_include path: (system_lib_string)) (function_definition type: (primitive_type) declarator: (function_declarator declarator: (identifier) parameters: (parameter_list)) body: (compound_statement (declaration type: (qualified_identifier scope: (namespace_identifier) name: (template_type name: (type_identifier) arguments: (template_argument_list (type_descriptor type: (primitive_type))))) declarator: (init_declarator declarator: (identifier) value: (initializer_list (number_literal) (number_literal) (number_literal) (number_literal) (number_literal) (number_literal)))) (expression_statement (call_expression function: (field_expression argument: (identifier) field: (field_identifier)) arguments: (argument_list (number_literal)))) (declaration type: (qualified_identifier scope: (namespace_identifier) name: (template_type name: (type_identifier) arguments: (template_argument_list (type_descriptor type: (primitive_type))))) declarator: (identifier)) (expression_statement (call_expression function: (field_expression argument: (identifier) field: (field_identifier)) arguments: (argument_list (number_literal)))) (expression_statement (call_expression function: (field_expression argument: (identifier) field: (field_identifier)) arguments: (argument_list))) (declaration type: (qualified_identifier scope: (namespace_identifier) name: (template_type name: (type_identifier) arguments: (template_argument_list (type_descriptor type: (primitive_type))))) declarator: (init_declarator declarator: (identifier) value: (initializer_list (number_literal) (number_literal) (number_literal) (number_literal) (number_literal)))) (expression_statement (call_expression function: (field_expression argument: (identifier) field: (field_identifier)) arguments: (argument_list (number_literal)))) (declaration type: (qualified_identifier scope: (namespace_identifier) name: (template_type name: (type_identifier) arguments: (template_argument_list (type_descriptor type: (primitive_type))))) declarator: (identifier)) (expression_statement (call_expression function: (field_expression argument: (identifier) field: (field_identifier)) arguments: (argument_list (number_literal)))) (expression_statement (call_expression function: (field_expression argument: (identifier) field: (field_identifier)) arguments: (argument_list))) (declaration type: (qualified_identifier scope: (namespace_identifier) name: (template_type name: (type_identifier) arguments: (template_argument_list (type_descriptor type: (qualified_identifier scope: (namespace_identifier) name: (type_identifier))) (type_descriptor type: (primitive_type))))) declarator: (init_declarator declarator: (identifier) value: (initializer_list (initializer_list (string_literal (string_content)) (number_literal)) (initializer_list (string_literal (string_content)) (number_literal)) (initializer_list (string_literal (string_content)) (number_literal))))) (expression_statement (assignment_expression left: (subscript_expression argument: (identifier) indices: (subscript_argument_list (string_literal (string_content)))) right: (number_literal))) (expression_statement (call_expression function: (qualified_identifier scope: (namespace_identifier) name: (identifier)) arguments: (argument_list (call_expression function: (field_expression argument: (identifier) field: (field_identifier)) arguments: (argument_list)) (call_expression function: (field_expression argument: (identifier) field: (field_identifier)) arguments: (argument_list))))))))
