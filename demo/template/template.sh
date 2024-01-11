translation_unit:  [>>  b'template <typename T1, typename T2>\nT2 Getmax(T1 a, T2 b)\n{\n    return (a > b) ? a : b;\n}\ntemplate double Getmax<>(int, double); // \xe6\x98\xbe\xe5\xbc\x8f\xe5\xae\x9e\xe4\xbe\x8b\xe5\x8c\x96\ntemplate <typename T1, typename T2>\nclass Pair\n{\npublic:\n    Pair(T1 first, T2 second) : first(first), second(second) {}\n\nprivate:\n    T1 first;\n    T2 second;\n};\n\ntemplate <class T, typename T::type n = 0>\nclass X; // \xe6\xa8\xa1\xe6\x9d\xbf\xe5\x90\x8d\nstruct S\n{\n    using type = int;\n};\nusing A = X<S>;    // OK\nusing B = X<S, 4>; // OK\n\nint main()\n{\n\n    double max = Getmax(1, 2.0);\n    Pair<int, double> pair1(42, 3.14);\n}\n'  <<]
  template_declaration:  [>>  b'template <typename T1, typename T2>\nT2 Getmax(T1 a, T2 b)\n{\n    return (a > b) ? a : b;\n}'  <<]
    template
    template_parameter_list:  [>>  b'<typename T1, typename T2>'  <<]
      <
      type_parameter_declaration:  [>>  b'typename T1'  <<]
        typename
        type_identifier:  [>>  b'T1'  <<]
      ,
      type_parameter_declaration:  [>>  b'typename T2'  <<]
        typename
        type_identifier:  [>>  b'T2'  <<]
      >
    function_definition:  [>>  b'T2 Getmax(T1 a, T2 b)\n{\n    return (a > b) ? a : b;\n}'  <<]
      type_identifier:  [>>  b'T2'  <<]
      function_declarator:  [>>  b'Getmax(T1 a, T2 b)'  <<]
        identifier:  [>>  b'Getmax'  <<]
        parameter_list:  [>>  b'(T1 a, T2 b)'  <<]
          (
          parameter_declaration:  [>>  b'T1 a'  <<]
            type_identifier:  [>>  b'T1'  <<]
            identifier:  [>>  b'a'  <<]
          ,
          parameter_declaration:  [>>  b'T2 b'  <<]
            type_identifier:  [>>  b'T2'  <<]
            identifier:  [>>  b'b'  <<]
          )
      compound_statement:  [>>  b'{\n    return (a > b) ? a : b;\n}'  <<]
        {
        return_statement:  [>>  b'return (a > b) ? a : b;'  <<]
          return
          conditional_expression:  [>>  b'(a > b) ? a : b'  <<]
            parenthesized_expression:  [>>  b'(a > b)'  <<]
              (
              binary_expression:  [>>  b'a > b'  <<]
                identifier:  [>>  b'a'  <<]
                >
                identifier:  [>>  b'b'  <<]
              )
            ?
            identifier:  [>>  b'a'  <<]
            :
            identifier:  [>>  b'b'  <<]
          ;
        }
  template_instantiation:  [>>  b'template double Getmax<>(int, double);'  <<]
    template
    primitive_type:  [>>  b'double'  <<]
    function_declarator:  [>>  b'Getmax<>(int, double)'  <<]
      template_function:  [>>  b'Getmax<>'  <<]
        identifier:  [>>  b'Getmax'  <<]
        template_argument_list:  [>>  b'<>'  <<]
          <
          >
      parameter_list:  [>>  b'(int, double)'  <<]
        (
        parameter_declaration:  [>>  b'int'  <<]
          primitive_type:  [>>  b'int'  <<]
        ,
        parameter_declaration:  [>>  b'double'  <<]
          primitive_type:  [>>  b'double'  <<]
        )
    ;
  comment:  [>>  b'// \xe6\x98\xbe\xe5\xbc\x8f\xe5\xae\x9e\xe4\xbe\x8b\xe5\x8c\x96'  <<]
  template_declaration:  [>>  b'template <typename T1, typename T2>\nclass Pair\n{\npublic:\n    Pair(T1 first, T2 second) : first(first), second(second) {}\n\nprivate:\n    T1 first;\n    T2 second;\n};'  <<]
    template
    template_parameter_list:  [>>  b'<typename T1, typename T2>'  <<]
      <
      type_parameter_declaration:  [>>  b'typename T1'  <<]
        typename
        type_identifier:  [>>  b'T1'  <<]
      ,
      type_parameter_declaration:  [>>  b'typename T2'  <<]
        typename
        type_identifier:  [>>  b'T2'  <<]
      >
    class_specifier:  [>>  b'class Pair\n{\npublic:\n    Pair(T1 first, T2 second) : first(first), second(second) {}\n\nprivate:\n    T1 first;\n    T2 second;\n}'  <<]
      class
      type_identifier:  [>>  b'Pair'  <<]
      field_declaration_list:  [>>  b'{\npublic:\n    Pair(T1 first, T2 second) : first(first), second(second) {}\n\nprivate:\n    T1 first;\n    T2 second;\n}'  <<]
        {
        access_specifier:  [>>  b'public'  <<]
          public
        :
        function_definition:  [>>  b'Pair(T1 first, T2 second) : first(first), second(second) {}'  <<]
          function_declarator:  [>>  b'Pair(T1 first, T2 second)'  <<]
            identifier:  [>>  b'Pair'  <<]
            parameter_list:  [>>  b'(T1 first, T2 second)'  <<]
              (
              parameter_declaration:  [>>  b'T1 first'  <<]
                type_identifier:  [>>  b'T1'  <<]
                identifier:  [>>  b'first'  <<]
              ,
              parameter_declaration:  [>>  b'T2 second'  <<]
                type_identifier:  [>>  b'T2'  <<]
                identifier:  [>>  b'second'  <<]
              )
          field_initializer_list:  [>>  b': first(first), second(second)'  <<]
            :
            field_initializer:  [>>  b'first(first)'  <<]
              field_identifier:  [>>  b'first'  <<]
              argument_list:  [>>  b'(first)'  <<]
                (
                identifier:  [>>  b'first'  <<]
                )
            ,
            field_initializer:  [>>  b'second(second)'  <<]
              field_identifier:  [>>  b'second'  <<]
              argument_list:  [>>  b'(second)'  <<]
                (
                identifier:  [>>  b'second'  <<]
                )
          compound_statement:  [>>  b'{}'  <<]
            {
            }
        access_specifier:  [>>  b'private'  <<]
          private
        :
        field_declaration:  [>>  b'T1 first;'  <<]
          type_identifier:  [>>  b'T1'  <<]
          field_identifier:  [>>  b'first'  <<]
          ;
        field_declaration:  [>>  b'T2 second;'  <<]
          type_identifier:  [>>  b'T2'  <<]
          field_identifier:  [>>  b'second'  <<]
          ;
        }
    ;
  template_declaration:  [>>  b'template <class T, typename T::type n = 0>\nclass X;'  <<]
    template
    template_parameter_list:  [>>  b'<class T, typename T::type n = 0>'  <<]
      <
      type_parameter_declaration:  [>>  b'class T'  <<]
        class
        type_identifier:  [>>  b'T'  <<]
      ,
      optional_parameter_declaration:  [>>  b'typename T::type n = 0'  <<]
        dependent_type:  [>>  b'typename T::type'  <<]
          typename
          qualified_identifier:  [>>  b'T::type'  <<]
            namespace_identifier:  [>>  b'T'  <<]
            ::
            type_identifier:  [>>  b'type'  <<]
        identifier:  [>>  b'n'  <<]
        =
        number_literal:  [>>  b'0'  <<]
      >
    class_specifier:  [>>  b'class X'  <<]
      class
      type_identifier:  [>>  b'X'  <<]
    ;
  comment:  [>>  b'// \xe6\xa8\xa1\xe6\x9d\xbf\xe5\x90\x8d'  <<]
  struct_specifier:  [>>  b'struct S\n{\n    using type = int;\n}'  <<]
    struct
    type_identifier:  [>>  b'S'  <<]
    field_declaration_list:  [>>  b'{\n    using type = int;\n}'  <<]
      {
      alias_declaration:  [>>  b'using type = int;'  <<]
        using
        type_identifier:  [>>  b'type'  <<]
        =
        type_descriptor:  [>>  b'int'  <<]
          primitive_type:  [>>  b'int'  <<]
        ;
      }
  ;
  alias_declaration:  [>>  b'using A = X<S>;'  <<]
    using
    type_identifier:  [>>  b'A'  <<]
    =
    type_descriptor:  [>>  b'X<S>'  <<]
      template_type:  [>>  b'X<S>'  <<]
        type_identifier:  [>>  b'X'  <<]
        template_argument_list:  [>>  b'<S>'  <<]
          <
          type_descriptor:  [>>  b'S'  <<]
            type_identifier:  [>>  b'S'  <<]
          >
    ;
  comment:  [>>  b'// OK'  <<]
  alias_declaration:  [>>  b'using B = X<S, 4>;'  <<]
    using
    type_identifier:  [>>  b'B'  <<]
    =
    type_descriptor:  [>>  b'X<S, 4>'  <<]
      template_type:  [>>  b'X<S, 4>'  <<]
        type_identifier:  [>>  b'X'  <<]
        template_argument_list:  [>>  b'<S, 4>'  <<]
          <
          type_descriptor:  [>>  b'S'  <<]
            type_identifier:  [>>  b'S'  <<]
          ,
          number_literal:  [>>  b'4'  <<]
          >
    ;
  comment:  [>>  b'// OK'  <<]
  function_definition:  [>>  b'int main()\n{\n\n    double max = Getmax(1, 2.0);\n    Pair<int, double> pair1(42, 3.14);\n}'  <<]
    primitive_type:  [>>  b'int'  <<]
    function_declarator:  [>>  b'main()'  <<]
      identifier:  [>>  b'main'  <<]
      parameter_list:  [>>  b'()'  <<]
        (
        )
    compound_statement:  [>>  b'{\n\n    double max = Getmax(1, 2.0);\n    Pair<int, double> pair1(42, 3.14);\n}'  <<]
      {
      declaration:  [>>  b'double max = Getmax(1, 2.0);'  <<]
        primitive_type:  [>>  b'double'  <<]
        init_declarator:  [>>  b'max = Getmax(1, 2.0)'  <<]
          identifier:  [>>  b'max'  <<]
          =
          call_expression:  [>>  b'Getmax(1, 2.0)'  <<]
            identifier:  [>>  b'Getmax'  <<]
            argument_list:  [>>  b'(1, 2.0)'  <<]
              (
              number_literal:  [>>  b'1'  <<]
              ,
              number_literal:  [>>  b'2.0'  <<]
              )
        ;
      declaration:  [>>  b'Pair<int, double> pair1(42, 3.14);'  <<]
        template_type:  [>>  b'Pair<int, double>'  <<]
          type_identifier:  [>>  b'Pair'  <<]
          template_argument_list:  [>>  b'<int, double>'  <<]
            <
            type_descriptor:  [>>  b'int'  <<]
              primitive_type:  [>>  b'int'  <<]
            ,
            type_descriptor:  [>>  b'double'  <<]
              primitive_type:  [>>  b'double'  <<]
            >
        init_declarator:  [>>  b'pair1(42, 3.14)'  <<]
          identifier:  [>>  b'pair1'  <<]
          argument_list:  [>>  b'(42, 3.14)'  <<]
            (
            number_literal:  [>>  b'42'  <<]
            ,
            number_literal:  [>>  b'3.14'  <<]
            )
        ;
      }
(translation_unit (template_declaration parameters: (template_parameter_list (type_parameter_declaration (type_identifier)) (type_parameter_declaration (type_identifier))) (function_definition type: (type_identifier) declarator: (function_declarator declarator: (identifier) parameters: (parameter_list (parameter_declaration type: (type_identifier) declarator: (identifier)) (parameter_declaration type: (type_identifier) declarator: (identifier)))) body: (compound_statement (return_statement (conditional_expression condition: (parenthesized_expression (binary_expression left: (identifier) right: (identifier))) consequence: (identifier) alternative: (identifier)))))) (template_instantiation type: (primitive_type) declarator: (function_declarator declarator: (template_function name: (identifier) arguments: (template_argument_list)) parameters: (parameter_list (parameter_declaration type: (primitive_type)) (parameter_declaration type: (primitive_type))))) (comment) (template_declaration parameters: (template_parameter_list (type_parameter_declaration (type_identifier)) (type_parameter_declaration (type_identifier))) (class_specifier name: (type_identifier) body: (field_declaration_list (access_specifier) (function_definition declarator: (function_declarator declarator: (identifier) parameters: (parameter_list (parameter_declaration type: (type_identifier) declarator: (identifier)) (parameter_declaration type: (type_identifier) declarator: (identifier)))) (field_initializer_list (field_initializer (field_identifier) (argument_list (identifier))) (field_initializer (field_identifier) (argument_list (identifier)))) body: (compound_statement)) (access_specifier) (field_declaration type: (type_identifier) declarator: (field_identifier)) (field_declaration type: (type_identifier) declarator: (field_identifier))))) (template_declaration parameters: (template_parameter_list (type_parameter_declaration (type_identifier)) (optional_parameter_declaration type: (dependent_type (qualified_identifier scope: (namespace_identifier) name: (type_identifier))) declarator: (identifier) default_value: (number_literal))) (class_specifier name: (type_identifier))) (comment) (struct_specifier name: (type_identifier) body: (field_declaration_list (alias_declaration name: (type_identifier) type: (type_descriptor type: (primitive_type))))) (alias_declaration name: (type_identifier) type: (type_descriptor type: (template_type name: (type_identifier) arguments: (template_argument_list (type_descriptor type: (type_identifier)))))) (comment) (alias_declaration name: (type_identifier) type: (type_descriptor type: (template_type name: (type_identifier) arguments: (template_argument_list (type_descriptor type: (type_identifier)) (number_literal))))) (comment) (function_definition type: (primitive_type) declarator: (function_declarator declarator: (identifier) parameters: (parameter_list)) body: (compound_statement (declaration type: (primitive_type) declarator: (init_declarator declarator: (identifier) value: (call_expression function: (identifier) arguments: (argument_list (number_literal) (number_literal))))) (declaration type: (template_type name: (type_identifier) arguments: (template_argument_list (type_descriptor type: (primitive_type)) (type_descriptor type: (primitive_type)))) declarator: (init_declarator declarator: (identifier) value: (argument_list (number_literal) (number_literal)))))))
