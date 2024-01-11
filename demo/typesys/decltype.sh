translation_unit:  [>>  b'#include <typeinfo>\n/*\xe6\xa3\x80\xe6\x9f\xa5\xe5\xae\x9e\xe4\xbd\x93\xe7\x9a\x84\xe5\xa3\xb0\xe6\x98\x8e\xe7\xb1\xbb\xe5\x9e\x8b\xef\xbc\x8c\xe6\x88\x96\xe8\xa1\xa8\xe8\xbe\xbe\xe5\xbc\x8f\xe7\x9a\x84\xe7\xb1\xbb\xe5\x9e\x8b\xe5\x92\x8c\xe5\x80\xbc\xe7\xb1\xbb\xe5\x88\xab\xef\xbc\x8c\xe5\xb8\xb8\xe7\x94\xa8\xe4\xba\x8e\xe6\xa8\xa1\xe7\x89\x88\xe7\xbc\x96\xe7\xa8\x8b*/\ntemplate <typename T, typename U>\nauto add(T t, U u) -> decltype(t + u) // \xe8\xbf\x94\xe5\x9b\x9e\xe7\xb1\xbb\xe5\x9e\x8b\xe4\xbe\x9d\xe8\xb5\x96\xe4\xba\x8e\xe6\xa8\xa1\xe6\x9d\xbf\xe5\xbd\xa2\xe5\x8f\x82\n{                                     \n    return t + u;\n}\nint subtract(double a, int b)\n{\n    return a - b;\n}\nint main()\n{\n    int value = 42;\n    double x = 10;\n    int y = 5;\n    decltype(value) anotherValue = 100;\n    decltype(subtract(x, y)) subResult = subtract(x, y);\n    auto addResult = add(value, subResult);\n    return 0;\n}\n'  <<]
  preproc_include:  [>>  b'#include <typeinfo>\n'  <<]
    #include
    system_lib_string:  [>>  b'<typeinfo>'  <<]
  comment:  [>>  b'/*\xe6\xa3\x80\xe6\x9f\xa5\xe5\xae\x9e\xe4\xbd\x93\xe7\x9a\x84\xe5\xa3\xb0\xe6\x98\x8e\xe7\xb1\xbb\xe5\x9e\x8b\xef\xbc\x8c\xe6\x88\x96\xe8\xa1\xa8\xe8\xbe\xbe\xe5\xbc\x8f\xe7\x9a\x84\xe7\xb1\xbb\xe5\x9e\x8b\xe5\x92\x8c\xe5\x80\xbc\xe7\xb1\xbb\xe5\x88\xab\xef\xbc\x8c\xe5\xb8\xb8\xe7\x94\xa8\xe4\xba\x8e\xe6\xa8\xa1\xe7\x89\x88\xe7\xbc\x96\xe7\xa8\x8b*/'  <<]
  template_declaration:  [>>  b'template <typename T, typename U>\nauto add(T t, U u) -> decltype(t + u) // \xe8\xbf\x94\xe5\x9b\x9e\xe7\xb1\xbb\xe5\x9e\x8b\xe4\xbe\x9d\xe8\xb5\x96\xe4\xba\x8e\xe6\xa8\xa1\xe6\x9d\xbf\xe5\xbd\xa2\xe5\x8f\x82\n{                                     \n    return t + u;\n}'  <<]
    template
    template_parameter_list:  [>>  b'<typename T, typename U>'  <<]
      <
      type_parameter_declaration:  [>>  b'typename T'  <<]
        typename
        type_identifier:  [>>  b'T'  <<]
      ,
      type_parameter_declaration:  [>>  b'typename U'  <<]
        typename
        type_identifier:  [>>  b'U'  <<]
      >
    function_definition:  [>>  b'auto add(T t, U u) -> decltype(t + u) // \xe8\xbf\x94\xe5\x9b\x9e\xe7\xb1\xbb\xe5\x9e\x8b\xe4\xbe\x9d\xe8\xb5\x96\xe4\xba\x8e\xe6\xa8\xa1\xe6\x9d\xbf\xe5\xbd\xa2\xe5\x8f\x82\n{                                     \n    return t + u;\n}'  <<]
      placeholder_type_specifier:  [>>  b'auto'  <<]
        auto:  [>>  b'auto'  <<]
      function_declarator:  [>>  b'add(T t, U u) -> decltype(t + u)'  <<]
        identifier:  [>>  b'add'  <<]
        parameter_list:  [>>  b'(T t, U u)'  <<]
          (
          parameter_declaration:  [>>  b'T t'  <<]
            type_identifier:  [>>  b'T'  <<]
            identifier:  [>>  b't'  <<]
          ,
          parameter_declaration:  [>>  b'U u'  <<]
            type_identifier:  [>>  b'U'  <<]
            identifier:  [>>  b'u'  <<]
          )
        trailing_return_type:  [>>  b'-> decltype(t + u)'  <<]
          ->
          type_descriptor:  [>>  b'decltype(t + u)'  <<]
            decltype:  [>>  b'decltype(t + u)'  <<]
              decltype
              (
              binary_expression:  [>>  b't + u'  <<]
                identifier:  [>>  b't'  <<]
                +
                identifier:  [>>  b'u'  <<]
              )
      comment:  [>>  b'// \xe8\xbf\x94\xe5\x9b\x9e\xe7\xb1\xbb\xe5\x9e\x8b\xe4\xbe\x9d\xe8\xb5\x96\xe4\xba\x8e\xe6\xa8\xa1\xe6\x9d\xbf\xe5\xbd\xa2\xe5\x8f\x82'  <<]
      compound_statement:  [>>  b'{                                     \n    return t + u;\n}'  <<]
        {
        return_statement:  [>>  b'return t + u;'  <<]
          return
          binary_expression:  [>>  b't + u'  <<]
            identifier:  [>>  b't'  <<]
            +
            identifier:  [>>  b'u'  <<]
          ;
        }
  function_definition:  [>>  b'int subtract(double a, int b)\n{\n    return a - b;\n}'  <<]
    primitive_type:  [>>  b'int'  <<]
    function_declarator:  [>>  b'subtract(double a, int b)'  <<]
      identifier:  [>>  b'subtract'  <<]
      parameter_list:  [>>  b'(double a, int b)'  <<]
        (
        parameter_declaration:  [>>  b'double a'  <<]
          primitive_type:  [>>  b'double'  <<]
          identifier:  [>>  b'a'  <<]
        ,
        parameter_declaration:  [>>  b'int b'  <<]
          primitive_type:  [>>  b'int'  <<]
          identifier:  [>>  b'b'  <<]
        )
    compound_statement:  [>>  b'{\n    return a - b;\n}'  <<]
      {
      return_statement:  [>>  b'return a - b;'  <<]
        return
        binary_expression:  [>>  b'a - b'  <<]
          identifier:  [>>  b'a'  <<]
          -
          identifier:  [>>  b'b'  <<]
        ;
      }
  function_definition:  [>>  b'int main()\n{\n    int value = 42;\n    double x = 10;\n    int y = 5;\n    decltype(value) anotherValue = 100;\n    decltype(subtract(x, y)) subResult = subtract(x, y);\n    auto addResult = add(value, subResult);\n    return 0;\n}'  <<]
    primitive_type:  [>>  b'int'  <<]
    function_declarator:  [>>  b'main()'  <<]
      identifier:  [>>  b'main'  <<]
      parameter_list:  [>>  b'()'  <<]
        (
        )
    compound_statement:  [>>  b'{\n    int value = 42;\n    double x = 10;\n    int y = 5;\n    decltype(value) anotherValue = 100;\n    decltype(subtract(x, y)) subResult = subtract(x, y);\n    auto addResult = add(value, subResult);\n    return 0;\n}'  <<]
      {
      declaration:  [>>  b'int value = 42;'  <<]
        primitive_type:  [>>  b'int'  <<]
        init_declarator:  [>>  b'value = 42'  <<]
          identifier:  [>>  b'value'  <<]
          =
          number_literal:  [>>  b'42'  <<]
        ;
      declaration:  [>>  b'double x = 10;'  <<]
        primitive_type:  [>>  b'double'  <<]
        init_declarator:  [>>  b'x = 10'  <<]
          identifier:  [>>  b'x'  <<]
          =
          number_literal:  [>>  b'10'  <<]
        ;
      declaration:  [>>  b'int y = 5;'  <<]
        primitive_type:  [>>  b'int'  <<]
        init_declarator:  [>>  b'y = 5'  <<]
          identifier:  [>>  b'y'  <<]
          =
          number_literal:  [>>  b'5'  <<]
        ;
      declaration:  [>>  b'decltype(value) anotherValue = 100;'  <<]
        decltype:  [>>  b'decltype(value)'  <<]
          decltype
          (
          identifier:  [>>  b'value'  <<]
          )
        init_declarator:  [>>  b'anotherValue = 100'  <<]
          identifier:  [>>  b'anotherValue'  <<]
          =
          number_literal:  [>>  b'100'  <<]
        ;
      declaration:  [>>  b'decltype(subtract(x, y)) subResult = subtract(x, y);'  <<]
        decltype:  [>>  b'decltype(subtract(x, y))'  <<]
          decltype
          (
          call_expression:  [>>  b'subtract(x, y)'  <<]
            identifier:  [>>  b'subtract'  <<]
            argument_list:  [>>  b'(x, y)'  <<]
              (
              identifier:  [>>  b'x'  <<]
              ,
              identifier:  [>>  b'y'  <<]
              )
          )
        init_declarator:  [>>  b'subResult = subtract(x, y)'  <<]
          identifier:  [>>  b'subResult'  <<]
          =
          call_expression:  [>>  b'subtract(x, y)'  <<]
            identifier:  [>>  b'subtract'  <<]
            argument_list:  [>>  b'(x, y)'  <<]
              (
              identifier:  [>>  b'x'  <<]
              ,
              identifier:  [>>  b'y'  <<]
              )
        ;
      declaration:  [>>  b'auto addResult = add(value, subResult);'  <<]
        placeholder_type_specifier:  [>>  b'auto'  <<]
          auto:  [>>  b'auto'  <<]
        init_declarator:  [>>  b'addResult = add(value, subResult)'  <<]
          identifier:  [>>  b'addResult'  <<]
          =
          call_expression:  [>>  b'add(value, subResult)'  <<]
            identifier:  [>>  b'add'  <<]
            argument_list:  [>>  b'(value, subResult)'  <<]
              (
              identifier:  [>>  b'value'  <<]
              ,
              identifier:  [>>  b'subResult'  <<]
              )
        ;
      return_statement:  [>>  b'return 0;'  <<]
        return
        number_literal:  [>>  b'0'  <<]
        ;
      }
(translation_unit (preproc_include path: (system_lib_string)) (comment) (template_declaration parameters: (template_parameter_list (type_parameter_declaration (type_identifier)) (type_parameter_declaration (type_identifier))) (function_definition type: (placeholder_type_specifier (auto)) declarator: (function_declarator declarator: (identifier) parameters: (parameter_list (parameter_declaration type: (type_identifier) declarator: (identifier)) (parameter_declaration type: (type_identifier) declarator: (identifier))) (trailing_return_type (type_descriptor type: (decltype (binary_expression left: (identifier) right: (identifier)))))) (comment) body: (compound_statement (return_statement (binary_expression left: (identifier) right: (identifier)))))) (function_definition type: (primitive_type) declarator: (function_declarator declarator: (identifier) parameters: (parameter_list (parameter_declaration type: (primitive_type) declarator: (identifier)) (parameter_declaration type: (primitive_type) declarator: (identifier)))) body: (compound_statement (return_statement (binary_expression left: (identifier) right: (identifier))))) (function_definition type: (primitive_type) declarator: (function_declarator declarator: (identifier) parameters: (parameter_list)) body: (compound_statement (declaration type: (primitive_type) declarator: (init_declarator declarator: (identifier) value: (number_literal))) (declaration type: (primitive_type) declarator: (init_declarator declarator: (identifier) value: (number_literal))) (declaration type: (primitive_type) declarator: (init_declarator declarator: (identifier) value: (number_literal))) (declaration type: (decltype (identifier)) declarator: (init_declarator declarator: (identifier) value: (number_literal))) (declaration type: (decltype (call_expression function: (identifier) arguments: (argument_list (identifier) (identifier)))) declarator: (init_declarator declarator: (identifier) value: (call_expression function: (identifier) arguments: (argument_list (identifier) (identifier))))) (declaration type: (placeholder_type_specifier (auto)) declarator: (init_declarator declarator: (identifier) value: (call_expression function: (identifier) arguments: (argument_list (identifier) (identifier))))) (return_statement (number_literal)))))
