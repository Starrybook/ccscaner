translation_unit:  [>>  b'namespace A\n{\n    void g();\n}\n\nnamespace X\n{\n    using A::g; // A::g \xe7\x8e\xb0\xe5\x9c\xa8\xe4\xbd\x9c\xe4\xb8\xba ::X::g \xe5\x8f\xaf\xe8\xa7\x81\n}\nclass B\n{protected:\n    int m; // B::m \xe6\x98\xaf\xe5\x8f\x97\xe4\xbf\x9d\xe6\x8a\xa4\xe7\x9a\x84\n};\nclass D : B {\n    using B::m; // D::m \xe6\x98\xaf\xe5\x85\xac\xe5\xbc\x80\xe7\x9a\x84\n};\nvoid h()\n{\n    X::g(); // \xe8\xb0\x83\xe7\x94\xa8 A::g\n}'  <<]
  namespace_definition:  [>>  b'namespace A\n{\n    void g();\n}'  <<]
    namespace
    namespace_identifier:  [>>  b'A'  <<]
    declaration_list:  [>>  b'{\n    void g();\n}'  <<]
      {
      declaration:  [>>  b'void g();'  <<]
        primitive_type:  [>>  b'void'  <<]
        function_declarator:  [>>  b'g()'  <<]
          identifier:  [>>  b'g'  <<]
          parameter_list:  [>>  b'()'  <<]
            (
            )
        ;
      }
  namespace_definition:  [>>  b'namespace X\n{\n    using A::g; // A::g \xe7\x8e\xb0\xe5\x9c\xa8\xe4\xbd\x9c\xe4\xb8\xba ::X::g \xe5\x8f\xaf\xe8\xa7\x81\n}'  <<]
    namespace
    namespace_identifier:  [>>  b'X'  <<]
    declaration_list:  [>>  b'{\n    using A::g; // A::g \xe7\x8e\xb0\xe5\x9c\xa8\xe4\xbd\x9c\xe4\xb8\xba ::X::g \xe5\x8f\xaf\xe8\xa7\x81\n}'  <<]
      {
      using_declaration:  [>>  b'using A::g;'  <<]
        using
        qualified_identifier:  [>>  b'A::g'  <<]
          namespace_identifier:  [>>  b'A'  <<]
          ::
          identifier:  [>>  b'g'  <<]
        ;
      comment:  [>>  b'// A::g \xe7\x8e\xb0\xe5\x9c\xa8\xe4\xbd\x9c\xe4\xb8\xba ::X::g \xe5\x8f\xaf\xe8\xa7\x81'  <<]
      }
  class_specifier:  [>>  b'class B\n{protected:\n    int m; // B::m \xe6\x98\xaf\xe5\x8f\x97\xe4\xbf\x9d\xe6\x8a\xa4\xe7\x9a\x84\n}'  <<]
    class
    type_identifier:  [>>  b'B'  <<]
    field_declaration_list:  [>>  b'{protected:\n    int m; // B::m \xe6\x98\xaf\xe5\x8f\x97\xe4\xbf\x9d\xe6\x8a\xa4\xe7\x9a\x84\n}'  <<]
      {
      access_specifier:  [>>  b'protected'  <<]
        protected
      :
      field_declaration:  [>>  b'int m;'  <<]
        primitive_type:  [>>  b'int'  <<]
        field_identifier:  [>>  b'm'  <<]
        ;
      comment:  [>>  b'// B::m \xe6\x98\xaf\xe5\x8f\x97\xe4\xbf\x9d\xe6\x8a\xa4\xe7\x9a\x84'  <<]
      }
  ;
  class_specifier:  [>>  b'class D : B {\n    using B::m; // D::m \xe6\x98\xaf\xe5\x85\xac\xe5\xbc\x80\xe7\x9a\x84\n}'  <<]
    class
    type_identifier:  [>>  b'D'  <<]
    base_class_clause:  [>>  b': B'  <<]
      :
      type_identifier:  [>>  b'B'  <<]
    field_declaration_list:  [>>  b'{\n    using B::m; // D::m \xe6\x98\xaf\xe5\x85\xac\xe5\xbc\x80\xe7\x9a\x84\n}'  <<]
      {
      using_declaration:  [>>  b'using B::m;'  <<]
        using
        qualified_identifier:  [>>  b'B::m'  <<]
          namespace_identifier:  [>>  b'B'  <<]
          ::
          identifier:  [>>  b'm'  <<]
        ;
      comment:  [>>  b'// D::m \xe6\x98\xaf\xe5\x85\xac\xe5\xbc\x80\xe7\x9a\x84'  <<]
      }
  ;
  function_definition:  [>>  b'void h()\n{\n    X::g(); // \xe8\xb0\x83\xe7\x94\xa8 A::g\n}'  <<]
    primitive_type:  [>>  b'void'  <<]
    function_declarator:  [>>  b'h()'  <<]
      identifier:  [>>  b'h'  <<]
      parameter_list:  [>>  b'()'  <<]
        (
        )
    compound_statement:  [>>  b'{\n    X::g(); // \xe8\xb0\x83\xe7\x94\xa8 A::g\n}'  <<]
      {
      expression_statement:  [>>  b'X::g();'  <<]
        call_expression:  [>>  b'X::g()'  <<]
          qualified_identifier:  [>>  b'X::g'  <<]
            namespace_identifier:  [>>  b'X'  <<]
            ::
            identifier:  [>>  b'g'  <<]
          argument_list:  [>>  b'()'  <<]
            (
            )
        ;
      comment:  [>>  b'// \xe8\xb0\x83\xe7\x94\xa8 A::g'  <<]
      }
(translation_unit (namespace_definition name: (namespace_identifier) body: (declaration_list (declaration type: (primitive_type) declarator: (function_declarator declarator: (identifier) parameters: (parameter_list))))) (namespace_definition name: (namespace_identifier) body: (declaration_list (using_declaration (qualified_identifier scope: (namespace_identifier) name: (identifier))) (comment))) (class_specifier name: (type_identifier) body: (field_declaration_list (access_specifier) (field_declaration type: (primitive_type) declarator: (field_identifier)) (comment))) (class_specifier name: (type_identifier) (base_class_clause (type_identifier)) body: (field_declaration_list (using_declaration (qualified_identifier scope: (namespace_identifier) name: (identifier))) (comment))) (function_definition type: (primitive_type) declarator: (function_declarator declarator: (identifier) parameters: (parameter_list)) body: (compound_statement (expression_statement (call_expression function: (qualified_identifier scope: (namespace_identifier) name: (identifier)) arguments: (argument_list))) (comment))))
