translation_unit:  [>>  b'#include <iostream>\n// \xe4\xbd\xbf\xe7\x94\xa8 constexpr \xe5\xae\x9a\xe4\xb9\x89\xe4\xb8\x80\xe4\xb8\xaa\xe7\xbc\x96\xe8\xaf\x91\xe6\x97\xb6\xe5\xb8\xb8\xe9\x87\x8f, constexpr\xe4\xbf\xae\xe9\xa5\xb0\xe5\x87\xbd\xe6\x95\xb0\xe6\x97\xb6\xe5\x8f\xaa\xe8\x83\xbd\xe6\x9c\x89\xe4\xb8\x80\xe4\xb8\xaareturn\xe8\xaf\xad\xe5\x8f\xa5,\xe4\xb8\x94\xe8\xa7\x86\xe4\xb8\xba\xe5\x86\x85\xe8\x81\x94\xe5\x87\xbd\xe6\x95\xb0\nconstexpr int Getlen(int a, int b)\n{\n    return a + b;\n}\nconstexpr int factorial(int n)\n{\n    return n <= 1 ? 1 : (n * factorial(n - 1));\n}\ntemplate <typename T>\nconstexpr T dispaly(T t)\n{\n    return t;\n}\nclass Myclass\n{\npublic:\n    int d1, d2;\n    constexpr Myclass(int num1, int num2) : d1(num1), d2(num2) {}\n};\nint main()\n{\n    int arr1[Getlen(2, 3)]; // \xe5\x9c\xa8\xe7\xbc\x96\xe8\xaf\x91\xe6\x97\xb6\xe8\xae\xa1\xe7\xae\x97\n    constexpr int len = 1 + 2 + 3;\n    char arr2[len];\n    constexpr Myclass t1(1, 2);\n    constexpr int ret = dispaly(10);\n    return 0;\n}\n'  <<]
  preproc_include:  [>>  b'#include <iostream>\n'  <<]
    #include
    system_lib_string:  [>>  b'<iostream>'  <<]
  comment:  [>>  b'// \xe4\xbd\xbf\xe7\x94\xa8 constexpr \xe5\xae\x9a\xe4\xb9\x89\xe4\xb8\x80\xe4\xb8\xaa\xe7\xbc\x96\xe8\xaf\x91\xe6\x97\xb6\xe5\xb8\xb8\xe9\x87\x8f, constexpr\xe4\xbf\xae\xe9\xa5\xb0\xe5\x87\xbd\xe6\x95\xb0\xe6\x97\xb6\xe5\x8f\xaa\xe8\x83\xbd\xe6\x9c\x89\xe4\xb8\x80\xe4\xb8\xaareturn\xe8\xaf\xad\xe5\x8f\xa5,\xe4\xb8\x94\xe8\xa7\x86\xe4\xb8\xba\xe5\x86\x85\xe8\x81\x94\xe5\x87\xbd\xe6\x95\xb0'  <<]
  function_definition:  [>>  b'constexpr int Getlen(int a, int b)\n{\n    return a + b;\n}'  <<]
    type_qualifier:  [>>  b'constexpr'  <<]
      constexpr
    primitive_type:  [>>  b'int'  <<]
    function_declarator:  [>>  b'Getlen(int a, int b)'  <<]
      identifier:  [>>  b'Getlen'  <<]
      parameter_list:  [>>  b'(int a, int b)'  <<]
        (
        parameter_declaration:  [>>  b'int a'  <<]
          primitive_type:  [>>  b'int'  <<]
          identifier:  [>>  b'a'  <<]
        ,
        parameter_declaration:  [>>  b'int b'  <<]
          primitive_type:  [>>  b'int'  <<]
          identifier:  [>>  b'b'  <<]
        )
    compound_statement:  [>>  b'{\n    return a + b;\n}'  <<]
      {
      return_statement:  [>>  b'return a + b;'  <<]
        return
        binary_expression:  [>>  b'a + b'  <<]
          identifier:  [>>  b'a'  <<]
          +
          identifier:  [>>  b'b'  <<]
        ;
      }
  function_definition:  [>>  b'constexpr int factorial(int n)\n{\n    return n <= 1 ? 1 : (n * factorial(n - 1));\n}'  <<]
    type_qualifier:  [>>  b'constexpr'  <<]
      constexpr
    primitive_type:  [>>  b'int'  <<]
    function_declarator:  [>>  b'factorial(int n)'  <<]
      identifier:  [>>  b'factorial'  <<]
      parameter_list:  [>>  b'(int n)'  <<]
        (
        parameter_declaration:  [>>  b'int n'  <<]
          primitive_type:  [>>  b'int'  <<]
          identifier:  [>>  b'n'  <<]
        )
    compound_statement:  [>>  b'{\n    return n <= 1 ? 1 : (n * factorial(n - 1));\n}'  <<]
      {
      return_statement:  [>>  b'return n <= 1 ? 1 : (n * factorial(n - 1));'  <<]
        return
        conditional_expression:  [>>  b'n <= 1 ? 1 : (n * factorial(n - 1))'  <<]
          binary_expression:  [>>  b'n <= 1'  <<]
            identifier:  [>>  b'n'  <<]
            <=
            number_literal:  [>>  b'1'  <<]
          ?
          number_literal:  [>>  b'1'  <<]
          :
          parenthesized_expression:  [>>  b'(n * factorial(n - 1))'  <<]
            (
            binary_expression:  [>>  b'n * factorial(n - 1)'  <<]
              identifier:  [>>  b'n'  <<]
              *
              call_expression:  [>>  b'factorial(n - 1)'  <<]
                identifier:  [>>  b'factorial'  <<]
                argument_list:  [>>  b'(n - 1)'  <<]
                  (
                  binary_expression:  [>>  b'n - 1'  <<]
                    identifier:  [>>  b'n'  <<]
                    -
                    number_literal:  [>>  b'1'  <<]
                  )
            )
        ;
      }
  template_declaration:  [>>  b'template <typename T>\nconstexpr T dispaly(T t)\n{\n    return t;\n}'  <<]
    template
    template_parameter_list:  [>>  b'<typename T>'  <<]
      <
      type_parameter_declaration:  [>>  b'typename T'  <<]
        typename
        type_identifier:  [>>  b'T'  <<]
      >
    function_definition:  [>>  b'constexpr T dispaly(T t)\n{\n    return t;\n}'  <<]
      type_qualifier:  [>>  b'constexpr'  <<]
        constexpr
      type_identifier:  [>>  b'T'  <<]
      function_declarator:  [>>  b'dispaly(T t)'  <<]
        identifier:  [>>  b'dispaly'  <<]
        parameter_list:  [>>  b'(T t)'  <<]
          (
          parameter_declaration:  [>>  b'T t'  <<]
            type_identifier:  [>>  b'T'  <<]
            identifier:  [>>  b't'  <<]
          )
      compound_statement:  [>>  b'{\n    return t;\n}'  <<]
        {
        return_statement:  [>>  b'return t;'  <<]
          return
          identifier:  [>>  b't'  <<]
          ;
        }
  class_specifier:  [>>  b'class Myclass\n{\npublic:\n    int d1, d2;\n    constexpr Myclass(int num1, int num2) : d1(num1), d2(num2) {}\n}'  <<]
    class
    type_identifier:  [>>  b'Myclass'  <<]
    field_declaration_list:  [>>  b'{\npublic:\n    int d1, d2;\n    constexpr Myclass(int num1, int num2) : d1(num1), d2(num2) {}\n}'  <<]
      {
      access_specifier:  [>>  b'public'  <<]
        public
      :
      field_declaration:  [>>  b'int d1, d2;'  <<]
        primitive_type:  [>>  b'int'  <<]
        field_identifier:  [>>  b'd1'  <<]
        ,
        field_identifier:  [>>  b'd2'  <<]
        ;
      function_definition:  [>>  b'constexpr Myclass(int num1, int num2) : d1(num1), d2(num2) {}'  <<]
        type_qualifier:  [>>  b'constexpr'  <<]
          constexpr
        function_declarator:  [>>  b'Myclass(int num1, int num2)'  <<]
          identifier:  [>>  b'Myclass'  <<]
          parameter_list:  [>>  b'(int num1, int num2)'  <<]
            (
            parameter_declaration:  [>>  b'int num1'  <<]
              primitive_type:  [>>  b'int'  <<]
              identifier:  [>>  b'num1'  <<]
            ,
            parameter_declaration:  [>>  b'int num2'  <<]
              primitive_type:  [>>  b'int'  <<]
              identifier:  [>>  b'num2'  <<]
            )
        field_initializer_list:  [>>  b': d1(num1), d2(num2)'  <<]
          :
          field_initializer:  [>>  b'd1(num1)'  <<]
            field_identifier:  [>>  b'd1'  <<]
            argument_list:  [>>  b'(num1)'  <<]
              (
              identifier:  [>>  b'num1'  <<]
              )
          ,
          field_initializer:  [>>  b'd2(num2)'  <<]
            field_identifier:  [>>  b'd2'  <<]
            argument_list:  [>>  b'(num2)'  <<]
              (
              identifier:  [>>  b'num2'  <<]
              )
        compound_statement:  [>>  b'{}'  <<]
          {
          }
      }
  ;
  function_definition:  [>>  b'int main()\n{\n    int arr1[Getlen(2, 3)]; // \xe5\x9c\xa8\xe7\xbc\x96\xe8\xaf\x91\xe6\x97\xb6\xe8\xae\xa1\xe7\xae\x97\n    constexpr int len = 1 + 2 + 3;\n    char arr2[len];\n    constexpr Myclass t1(1, 2);\n    constexpr int ret = dispaly(10);\n    return 0;\n}'  <<]
    primitive_type:  [>>  b'int'  <<]
    function_declarator:  [>>  b'main()'  <<]
      identifier:  [>>  b'main'  <<]
      parameter_list:  [>>  b'()'  <<]
        (
        )
    compound_statement:  [>>  b'{\n    int arr1[Getlen(2, 3)]; // \xe5\x9c\xa8\xe7\xbc\x96\xe8\xaf\x91\xe6\x97\xb6\xe8\xae\xa1\xe7\xae\x97\n    constexpr int len = 1 + 2 + 3;\n    char arr2[len];\n    constexpr Myclass t1(1, 2);\n    constexpr int ret = dispaly(10);\n    return 0;\n}'  <<]
      {
      declaration:  [>>  b'int arr1[Getlen(2, 3)];'  <<]
        primitive_type:  [>>  b'int'  <<]
        array_declarator:  [>>  b'arr1[Getlen(2, 3)]'  <<]
          identifier:  [>>  b'arr1'  <<]
          [
          call_expression:  [>>  b'Getlen(2, 3)'  <<]
            identifier:  [>>  b'Getlen'  <<]
            argument_list:  [>>  b'(2, 3)'  <<]
              (
              number_literal:  [>>  b'2'  <<]
              ,
              number_literal:  [>>  b'3'  <<]
              )
          ]
        ;
      comment:  [>>  b'// \xe5\x9c\xa8\xe7\xbc\x96\xe8\xaf\x91\xe6\x97\xb6\xe8\xae\xa1\xe7\xae\x97'  <<]
      declaration:  [>>  b'constexpr int len = 1 + 2 + 3;'  <<]
        type_qualifier:  [>>  b'constexpr'  <<]
          constexpr
        primitive_type:  [>>  b'int'  <<]
        init_declarator:  [>>  b'len = 1 + 2 + 3'  <<]
          identifier:  [>>  b'len'  <<]
          =
          binary_expression:  [>>  b'1 + 2 + 3'  <<]
            binary_expression:  [>>  b'1 + 2'  <<]
              number_literal:  [>>  b'1'  <<]
              +
              number_literal:  [>>  b'2'  <<]
            +
            number_literal:  [>>  b'3'  <<]
        ;
      declaration:  [>>  b'char arr2[len];'  <<]
        primitive_type:  [>>  b'char'  <<]
        array_declarator:  [>>  b'arr2[len]'  <<]
          identifier:  [>>  b'arr2'  <<]
          [
          identifier:  [>>  b'len'  <<]
          ]
        ;
      declaration:  [>>  b'constexpr Myclass t1(1, 2);'  <<]
        type_qualifier:  [>>  b'constexpr'  <<]
          constexpr
        type_identifier:  [>>  b'Myclass'  <<]
        init_declarator:  [>>  b't1(1, 2)'  <<]
          identifier:  [>>  b't1'  <<]
          argument_list:  [>>  b'(1, 2)'  <<]
            (
            number_literal:  [>>  b'1'  <<]
            ,
            number_literal:  [>>  b'2'  <<]
            )
        ;
      declaration:  [>>  b'constexpr int ret = dispaly(10);'  <<]
        type_qualifier:  [>>  b'constexpr'  <<]
          constexpr
        primitive_type:  [>>  b'int'  <<]
        init_declarator:  [>>  b'ret = dispaly(10)'  <<]
          identifier:  [>>  b'ret'  <<]
          =
          call_expression:  [>>  b'dispaly(10)'  <<]
            identifier:  [>>  b'dispaly'  <<]
            argument_list:  [>>  b'(10)'  <<]
              (
              number_literal:  [>>  b'10'  <<]
              )
        ;
      return_statement:  [>>  b'return 0;'  <<]
        return
        number_literal:  [>>  b'0'  <<]
        ;
      }
(translation_unit (preproc_include path: (system_lib_string)) (comment) (function_definition (type_qualifier) type: (primitive_type) declarator: (function_declarator declarator: (identifier) parameters: (parameter_list (parameter_declaration type: (primitive_type) declarator: (identifier)) (parameter_declaration type: (primitive_type) declarator: (identifier)))) body: (compound_statement (return_statement (binary_expression left: (identifier) right: (identifier))))) (function_definition (type_qualifier) type: (primitive_type) declarator: (function_declarator declarator: (identifier) parameters: (parameter_list (parameter_declaration type: (primitive_type) declarator: (identifier)))) body: (compound_statement (return_statement (conditional_expression condition: (binary_expression left: (identifier) right: (number_literal)) consequence: (number_literal) alternative: (parenthesized_expression (binary_expression left: (identifier) right: (call_expression function: (identifier) arguments: (argument_list (binary_expression left: (identifier) right: (number_literal)))))))))) (template_declaration parameters: (template_parameter_list (type_parameter_declaration (type_identifier))) (function_definition (type_qualifier) type: (type_identifier) declarator: (function_declarator declarator: (identifier) parameters: (parameter_list (parameter_declaration type: (type_identifier) declarator: (identifier)))) body: (compound_statement (return_statement (identifier))))) (class_specifier name: (type_identifier) body: (field_declaration_list (access_specifier) (field_declaration type: (primitive_type) declarator: (field_identifier) declarator: (field_identifier)) (function_definition (type_qualifier) declarator: (function_declarator declarator: (identifier) parameters: (parameter_list (parameter_declaration type: (primitive_type) declarator: (identifier)) (parameter_declaration type: (primitive_type) declarator: (identifier)))) (field_initializer_list (field_initializer (field_identifier) (argument_list (identifier))) (field_initializer (field_identifier) (argument_list (identifier)))) body: (compound_statement)))) (function_definition type: (primitive_type) declarator: (function_declarator declarator: (identifier) parameters: (parameter_list)) body: (compound_statement (declaration type: (primitive_type) declarator: (array_declarator declarator: (identifier) size: (call_expression function: (identifier) arguments: (argument_list (number_literal) (number_literal))))) (comment) (declaration (type_qualifier) type: (primitive_type) declarator: (init_declarator declarator: (identifier) value: (binary_expression left: (binary_expression left: (number_literal) right: (number_literal)) right: (number_literal)))) (declaration type: (primitive_type) declarator: (array_declarator declarator: (identifier) size: (identifier))) (declaration (type_qualifier) type: (type_identifier) declarator: (init_declarator declarator: (identifier) value: (argument_list (number_literal) (number_literal)))) (declaration (type_qualifier) type: (primitive_type) declarator: (init_declarator declarator: (identifier) value: (call_expression function: (identifier) arguments: (argument_list (number_literal))))) (return_statement (number_literal)))))
