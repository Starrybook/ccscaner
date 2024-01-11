translation_unit:  [>>  b'#include <vector>\ntypedef std::vector<int> IntVector;\ntypedef int (*OperationFunction)(int, int);\ntypedef char* pCHAR;\ntypedef double (* (* (*fp) ()) [10]) ();\ntypedef struct \n{\n    int x;\n}B;\nint add(int a, int b) {\n    return a + b;\n}\nint main() {\n    OperationFunction addPtr = add;\n    fp a;\n    return 0;\n}\n'  <<]
  preproc_include:  [>>  b'#include <vector>\n'  <<]
    #include
    system_lib_string:  [>>  b'<vector>'  <<]
  type_definition:  [>>  b'typedef std::vector<int> IntVector;'  <<]
    typedef
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
    type_identifier:  [>>  b'IntVector'  <<]
    ;
  type_definition:  [>>  b'typedef int (*OperationFunction)(int, int);'  <<]
    typedef
    primitive_type:  [>>  b'int'  <<]
    function_declarator:  [>>  b'(*OperationFunction)(int, int)'  <<]
      parenthesized_declarator:  [>>  b'(*OperationFunction)'  <<]
        (
        pointer_declarator:  [>>  b'*OperationFunction'  <<]
          *
          type_identifier:  [>>  b'OperationFunction'  <<]
        )
      parameter_list:  [>>  b'(int, int)'  <<]
        (
        parameter_declaration:  [>>  b'int'  <<]
          primitive_type:  [>>  b'int'  <<]
        ,
        parameter_declaration:  [>>  b'int'  <<]
          primitive_type:  [>>  b'int'  <<]
        )
    ;
  type_definition:  [>>  b'typedef char* pCHAR;'  <<]
    typedef
    primitive_type:  [>>  b'char'  <<]
    pointer_declarator:  [>>  b'* pCHAR'  <<]
      *
      type_identifier:  [>>  b'pCHAR'  <<]
    ;
  type_definition:  [>>  b'typedef double (* (* (*fp) ()) [10]) ();'  <<]
    typedef
    primitive_type:  [>>  b'double'  <<]
    function_declarator:  [>>  b'(* (* (*fp) ()) [10]) ()'  <<]
      parenthesized_declarator:  [>>  b'(* (* (*fp) ()) [10])'  <<]
        (
        pointer_declarator:  [>>  b'* (* (*fp) ()) [10]'  <<]
          *
          array_declarator:  [>>  b'(* (*fp) ()) [10]'  <<]
            parenthesized_declarator:  [>>  b'(* (*fp) ())'  <<]
              (
              pointer_declarator:  [>>  b'* (*fp) ()'  <<]
                *
                function_declarator:  [>>  b'(*fp) ()'  <<]
                  parenthesized_declarator:  [>>  b'(*fp)'  <<]
                    (
                    pointer_declarator:  [>>  b'*fp'  <<]
                      *
                      type_identifier:  [>>  b'fp'  <<]
                    )
                  parameter_list:  [>>  b'()'  <<]
                    (
                    )
              )
            [
            number_literal:  [>>  b'10'  <<]
            ]
        )
      parameter_list:  [>>  b'()'  <<]
        (
        )
    ;
  type_definition:  [>>  b'typedef struct \n{\n    int x;\n}B;'  <<]
    typedef
    struct_specifier:  [>>  b'struct \n{\n    int x;\n}'  <<]
      struct
      field_declaration_list:  [>>  b'{\n    int x;\n}'  <<]
        {
        field_declaration:  [>>  b'int x;'  <<]
          primitive_type:  [>>  b'int'  <<]
          field_identifier:  [>>  b'x'  <<]
          ;
        }
    type_identifier:  [>>  b'B'  <<]
    ;
  function_definition:  [>>  b'int add(int a, int b) {\n    return a + b;\n}'  <<]
    primitive_type:  [>>  b'int'  <<]
    function_declarator:  [>>  b'add(int a, int b)'  <<]
      identifier:  [>>  b'add'  <<]
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
  function_definition:  [>>  b'int main() {\n    OperationFunction addPtr = add;\n    fp a;\n    return 0;\n}'  <<]
    primitive_type:  [>>  b'int'  <<]
    function_declarator:  [>>  b'main()'  <<]
      identifier:  [>>  b'main'  <<]
      parameter_list:  [>>  b'()'  <<]
        (
        )
    compound_statement:  [>>  b'{\n    OperationFunction addPtr = add;\n    fp a;\n    return 0;\n}'  <<]
      {
      declaration:  [>>  b'OperationFunction addPtr = add;'  <<]
        type_identifier:  [>>  b'OperationFunction'  <<]
        init_declarator:  [>>  b'addPtr = add'  <<]
          identifier:  [>>  b'addPtr'  <<]
          =
          identifier:  [>>  b'add'  <<]
        ;
      declaration:  [>>  b'fp a;'  <<]
        type_identifier:  [>>  b'fp'  <<]
        identifier:  [>>  b'a'  <<]
        ;
      return_statement:  [>>  b'return 0;'  <<]
        return
        number_literal:  [>>  b'0'  <<]
        ;
      }
(translation_unit (preproc_include path: (system_lib_string)) (type_definition type: (qualified_identifier scope: (namespace_identifier) name: (template_type name: (type_identifier) arguments: (template_argument_list (type_descriptor type: (primitive_type))))) declarator: (type_identifier)) (type_definition type: (primitive_type) declarator: (function_declarator declarator: (parenthesized_declarator (pointer_declarator declarator: (type_identifier))) parameters: (parameter_list (parameter_declaration type: (primitive_type)) (parameter_declaration type: (primitive_type))))) (type_definition type: (primitive_type) declarator: (pointer_declarator declarator: (type_identifier))) (type_definition type: (primitive_type) declarator: (function_declarator declarator: (parenthesized_declarator (pointer_declarator declarator: (array_declarator declarator: (parenthesized_declarator (pointer_declarator declarator: (function_declarator declarator: (parenthesized_declarator (pointer_declarator declarator: (type_identifier))) parameters: (parameter_list)))) size: (number_literal)))) parameters: (parameter_list))) (type_definition type: (struct_specifier body: (field_declaration_list (field_declaration type: (primitive_type) declarator: (field_identifier)))) declarator: (type_identifier)) (function_definition type: (primitive_type) declarator: (function_declarator declarator: (identifier) parameters: (parameter_list (parameter_declaration type: (primitive_type) declarator: (identifier)) (parameter_declaration type: (primitive_type) declarator: (identifier)))) body: (compound_statement (return_statement (binary_expression left: (identifier) right: (identifier))))) (function_definition type: (primitive_type) declarator: (function_declarator declarator: (identifier) parameters: (parameter_list)) body: (compound_statement (declaration type: (type_identifier) declarator: (init_declarator declarator: (identifier) value: (identifier))) (declaration type: (type_identifier) declarator: (identifier)) (return_statement (number_literal)))))
