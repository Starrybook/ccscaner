translation_unit:  [>>  b'#include <cstdarg>\n\nvoid printNumbers(int count, ...)\n{\n    va_list args;\n    va_start(args, count);\n    for (int i = 0; i < count; ++i)\n    {\n        va_arg(args, int);\n    }\n    va_end(args);\n}\ntemplate <typename T, typename... Args>\nT sum(T first, Args... args)\n{\n    return first + sum(args...);\n}\nint main(int argc, char *argv[])\n{\n    printNumbers(5, 1, 2);\n    return 0;\n}\n'  <<]
  preproc_include:  [>>  b'#include <cstdarg>\n'  <<]
    #include
    system_lib_string:  [>>  b'<cstdarg>'  <<]
  function_definition:  [>>  b'void printNumbers(int count, ...)\n{\n    va_list args;\n    va_start(args, count);\n    for (int i = 0; i < count; ++i)\n    {\n        va_arg(args, int);\n    }\n    va_end(args);\n}'  <<]
    primitive_type:  [>>  b'void'  <<]
    function_declarator:  [>>  b'printNumbers(int count, ...)'  <<]
      identifier:  [>>  b'printNumbers'  <<]
      parameter_list:  [>>  b'(int count, ...)'  <<]
        (
        parameter_declaration:  [>>  b'int count'  <<]
          primitive_type:  [>>  b'int'  <<]
          identifier:  [>>  b'count'  <<]
        ,
        ...
        )
    compound_statement:  [>>  b'{\n    va_list args;\n    va_start(args, count);\n    for (int i = 0; i < count; ++i)\n    {\n        va_arg(args, int);\n    }\n    va_end(args);\n}'  <<]
      {
      declaration:  [>>  b'va_list args;'  <<]
        type_identifier:  [>>  b'va_list'  <<]
        identifier:  [>>  b'args'  <<]
        ;
      expression_statement:  [>>  b'va_start(args, count);'  <<]
        call_expression:  [>>  b'va_start(args, count)'  <<]
          identifier:  [>>  b'va_start'  <<]
          argument_list:  [>>  b'(args, count)'  <<]
            (
            identifier:  [>>  b'args'  <<]
            ,
            identifier:  [>>  b'count'  <<]
            )
        ;
      for_statement:  [>>  b'for (int i = 0; i < count; ++i)\n    {\n        va_arg(args, int);\n    }'  <<]
        for
        (
        declaration:  [>>  b'int i = 0;'  <<]
          primitive_type:  [>>  b'int'  <<]
          init_declarator:  [>>  b'i = 0'  <<]
            identifier:  [>>  b'i'  <<]
            =
            number_literal:  [>>  b'0'  <<]
          ;
        binary_expression:  [>>  b'i < count'  <<]
          identifier:  [>>  b'i'  <<]
          <
          identifier:  [>>  b'count'  <<]
        ;
        update_expression:  [>>  b'++i'  <<]
          ++
          identifier:  [>>  b'i'  <<]
        )
        compound_statement:  [>>  b'{\n        va_arg(args, int);\n    }'  <<]
          {
          ERROR:  [>>  b'va_arg(args, int)'  <<]
            function_declarator:  [>>  b'va_arg(args, int)'  <<]
              identifier:  [>>  b'va_arg'  <<]
              parameter_list:  [>>  b'(args, int)'  <<]
                (
                parameter_declaration:  [>>  b'args'  <<]
                  type_identifier:  [>>  b'args'  <<]
                ,
                parameter_declaration:  [>>  b'int'  <<]
                  primitive_type:  [>>  b'int'  <<]
                )
          expression_statement:  [>>  b';'  <<]
            ;
          }
      expression_statement:  [>>  b'va_end(args);'  <<]
        call_expression:  [>>  b'va_end(args)'  <<]
          identifier:  [>>  b'va_end'  <<]
          argument_list:  [>>  b'(args)'  <<]
            (
            identifier:  [>>  b'args'  <<]
            )
        ;
      }
  template_declaration:  [>>  b'template <typename T, typename... Args>\nT sum(T first, Args... args)\n{\n    return first + sum(args...);\n}'  <<]
    template
    template_parameter_list:  [>>  b'<typename T, typename... Args>'  <<]
      <
      type_parameter_declaration:  [>>  b'typename T'  <<]
        typename
        type_identifier:  [>>  b'T'  <<]
      ,
      variadic_type_parameter_declaration:  [>>  b'typename... Args'  <<]
        typename
        ...
        type_identifier:  [>>  b'Args'  <<]
      >
    function_definition:  [>>  b'T sum(T first, Args... args)\n{\n    return first + sum(args...);\n}'  <<]
      type_identifier:  [>>  b'T'  <<]
      function_declarator:  [>>  b'sum(T first, Args... args)'  <<]
        identifier:  [>>  b'sum'  <<]
        parameter_list:  [>>  b'(T first, Args... args)'  <<]
          (
          parameter_declaration:  [>>  b'T first'  <<]
            type_identifier:  [>>  b'T'  <<]
            identifier:  [>>  b'first'  <<]
          ,
          variadic_parameter_declaration:  [>>  b'Args... args'  <<]
            type_identifier:  [>>  b'Args'  <<]
            variadic_declarator:  [>>  b'... args'  <<]
              ...
              identifier:  [>>  b'args'  <<]
          )
      compound_statement:  [>>  b'{\n    return first + sum(args...);\n}'  <<]
        {
        return_statement:  [>>  b'return first + sum(args...);'  <<]
          return
          binary_expression:  [>>  b'first + sum(args...)'  <<]
            identifier:  [>>  b'first'  <<]
            +
            call_expression:  [>>  b'sum(args...)'  <<]
              identifier:  [>>  b'sum'  <<]
              argument_list:  [>>  b'(args...)'  <<]
                (
                parameter_pack_expansion:  [>>  b'args...'  <<]
                  identifier:  [>>  b'args'  <<]
                  ...
                )
          ;
        }
  function_definition:  [>>  b'int main(int argc, char *argv[])\n{\n    printNumbers(5, 1, 2);\n    return 0;\n}'  <<]
    primitive_type:  [>>  b'int'  <<]
    function_declarator:  [>>  b'main(int argc, char *argv[])'  <<]
      identifier:  [>>  b'main'  <<]
      parameter_list:  [>>  b'(int argc, char *argv[])'  <<]
        (
        parameter_declaration:  [>>  b'int argc'  <<]
          primitive_type:  [>>  b'int'  <<]
          identifier:  [>>  b'argc'  <<]
        ,
        parameter_declaration:  [>>  b'char *argv[]'  <<]
          primitive_type:  [>>  b'char'  <<]
          pointer_declarator:  [>>  b'*argv[]'  <<]
            *
            array_declarator:  [>>  b'argv[]'  <<]
              identifier:  [>>  b'argv'  <<]
              [
              ]
        )
    compound_statement:  [>>  b'{\n    printNumbers(5, 1, 2);\n    return 0;\n}'  <<]
      {
      expression_statement:  [>>  b'printNumbers(5, 1, 2);'  <<]
        call_expression:  [>>  b'printNumbers(5, 1, 2)'  <<]
          identifier:  [>>  b'printNumbers'  <<]
          argument_list:  [>>  b'(5, 1, 2)'  <<]
            (
            number_literal:  [>>  b'5'  <<]
            ,
            number_literal:  [>>  b'1'  <<]
            ,
            number_literal:  [>>  b'2'  <<]
            )
        ;
      return_statement:  [>>  b'return 0;'  <<]
        return
        number_literal:  [>>  b'0'  <<]
        ;
      }
(translation_unit (preproc_include path: (system_lib_string)) (function_definition type: (primitive_type) declarator: (function_declarator declarator: (identifier) parameters: (parameter_list (parameter_declaration type: (primitive_type) declarator: (identifier)))) body: (compound_statement (declaration type: (type_identifier) declarator: (identifier)) (expression_statement (call_expression function: (identifier) arguments: (argument_list (identifier) (identifier)))) (for_statement initializer: (declaration type: (primitive_type) declarator: (init_declarator declarator: (identifier) value: (number_literal))) condition: (binary_expression left: (identifier) right: (identifier)) update: (update_expression argument: (identifier)) body: (compound_statement (ERROR (function_declarator declarator: (identifier) parameters: (parameter_list (parameter_declaration type: (type_identifier)) (parameter_declaration type: (primitive_type))))) (expression_statement))) (expression_statement (call_expression function: (identifier) arguments: (argument_list (identifier)))))) (template_declaration parameters: (template_parameter_list (type_parameter_declaration (type_identifier)) (variadic_type_parameter_declaration (type_identifier))) (function_definition type: (type_identifier) declarator: (function_declarator declarator: (identifier) parameters: (parameter_list (parameter_declaration type: (type_identifier) declarator: (identifier)) (variadic_parameter_declaration type: (type_identifier) declarator: (variadic_declarator (identifier))))) body: (compound_statement (return_statement (binary_expression left: (identifier) right: (call_expression function: (identifier) arguments: (argument_list (parameter_pack_expansion pattern: (identifier))))))))) (function_definition type: (primitive_type) declarator: (function_declarator declarator: (identifier) parameters: (parameter_list (parameter_declaration type: (primitive_type) declarator: (identifier)) (parameter_declaration type: (primitive_type) declarator: (pointer_declarator declarator: (array_declarator declarator: (identifier)))))) body: (compound_statement (expression_statement (call_expression function: (identifier) arguments: (argument_list (number_literal) (number_literal) (number_literal)))) (return_statement (number_literal)))))
