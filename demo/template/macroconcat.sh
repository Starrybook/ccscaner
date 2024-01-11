translation_unit:  [>>  b'#include <iostream>\n\n#define CONCATENATE(a, b) a ## b\n#define MAKE_UNIQUE_VARIABLE(base) base ## __LINE__\nint main() {\n    int xy = 100;\n    CONCATENATE(x, y);\n    int MAKE_UNIQUE_VARIABLE(uniqueVar1) = 42;\n}\n'  <<]
  preproc_include:  [>>  b'#include <iostream>\n'  <<]
    #include
    system_lib_string:  [>>  b'<iostream>'  <<]
  preproc_function_def:  [>>  b'#define CONCATENATE(a, b) a ## b\n'  <<]
    #define
    identifier:  [>>  b'CONCATENATE'  <<]
    preproc_params:  [>>  b'(a, b)'  <<]
      (
      identifier:  [>>  b'a'  <<]
      ,
      identifier:  [>>  b'b'  <<]
      )
    preproc_arg:  [>>  b'a ## b'  <<]
  preproc_function_def:  [>>  b'#define MAKE_UNIQUE_VARIABLE(base) base ## __LINE__\n'  <<]
    #define
    identifier:  [>>  b'MAKE_UNIQUE_VARIABLE'  <<]
    preproc_params:  [>>  b'(base)'  <<]
      (
      identifier:  [>>  b'base'  <<]
      )
    preproc_arg:  [>>  b'base ## __LINE__'  <<]
  function_definition:  [>>  b'int main() {\n    int xy = 100;\n    CONCATENATE(x, y);\n    int MAKE_UNIQUE_VARIABLE(uniqueVar1) = 42;\n}'  <<]
    primitive_type:  [>>  b'int'  <<]
    function_declarator:  [>>  b'main()'  <<]
      identifier:  [>>  b'main'  <<]
      parameter_list:  [>>  b'()'  <<]
        (
        )
    compound_statement:  [>>  b'{\n    int xy = 100;\n    CONCATENATE(x, y);\n    int MAKE_UNIQUE_VARIABLE(uniqueVar1) = 42;\n}'  <<]
      {
      declaration:  [>>  b'int xy = 100;'  <<]
        primitive_type:  [>>  b'int'  <<]
        init_declarator:  [>>  b'xy = 100'  <<]
          identifier:  [>>  b'xy'  <<]
          =
          number_literal:  [>>  b'100'  <<]
        ;
      expression_statement:  [>>  b'CONCATENATE(x, y);'  <<]
        call_expression:  [>>  b'CONCATENATE(x, y)'  <<]
          identifier:  [>>  b'CONCATENATE'  <<]
          argument_list:  [>>  b'(x, y)'  <<]
            (
            identifier:  [>>  b'x'  <<]
            ,
            identifier:  [>>  b'y'  <<]
            )
        ;
      declaration:  [>>  b'int MAKE_UNIQUE_VARIABLE(uniqueVar1) = 42;'  <<]
        primitive_type:  [>>  b'int'  <<]
        init_declarator:  [>>  b'MAKE_UNIQUE_VARIABLE(uniqueVar1) = 42'  <<]
          function_declarator:  [>>  b'MAKE_UNIQUE_VARIABLE(uniqueVar1)'  <<]
            identifier:  [>>  b'MAKE_UNIQUE_VARIABLE'  <<]
            parameter_list:  [>>  b'(uniqueVar1)'  <<]
              (
              parameter_declaration:  [>>  b'uniqueVar1'  <<]
                type_identifier:  [>>  b'uniqueVar1'  <<]
              )
          =
          number_literal:  [>>  b'42'  <<]
        ;
      }
(translation_unit (preproc_include path: (system_lib_string)) (preproc_function_def name: (identifier) parameters: (preproc_params (identifier) (identifier)) value: (preproc_arg)) (preproc_function_def name: (identifier) parameters: (preproc_params (identifier)) value: (preproc_arg)) (function_definition type: (primitive_type) declarator: (function_declarator declarator: (identifier) parameters: (parameter_list)) body: (compound_statement (declaration type: (primitive_type) declarator: (init_declarator declarator: (identifier) value: (number_literal))) (expression_statement (call_expression function: (identifier) arguments: (argument_list (identifier) (identifier)))) (declaration type: (primitive_type) declarator: (init_declarator declarator: (function_declarator declarator: (identifier) parameters: (parameter_list (parameter_declaration type: (type_identifier)))) value: (number_literal))))))
