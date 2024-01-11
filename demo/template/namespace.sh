translation_unit:  [>>  b'namespace Q\n{\n    namespace V\n    {\n        void f();\n    }\n    void V::f() {}\n    namespace V\n    {\n        void g();\n    }\n}\nvoid Q::V::g() {}'  <<]
  namespace_definition:  [>>  b'namespace Q\n{\n    namespace V\n    {\n        void f();\n    }\n    void V::f() {}\n    namespace V\n    {\n        void g();\n    }\n}'  <<]
    namespace
    namespace_identifier:  [>>  b'Q'  <<]
    declaration_list:  [>>  b'{\n    namespace V\n    {\n        void f();\n    }\n    void V::f() {}\n    namespace V\n    {\n        void g();\n    }\n}'  <<]
      {
      namespace_definition:  [>>  b'namespace V\n    {\n        void f();\n    }'  <<]
        namespace
        namespace_identifier:  [>>  b'V'  <<]
        declaration_list:  [>>  b'{\n        void f();\n    }'  <<]
          {
          declaration:  [>>  b'void f();'  <<]
            primitive_type:  [>>  b'void'  <<]
            function_declarator:  [>>  b'f()'  <<]
              identifier:  [>>  b'f'  <<]
              parameter_list:  [>>  b'()'  <<]
                (
                )
            ;
          }
      function_definition:  [>>  b'void V::f() {}'  <<]
        primitive_type:  [>>  b'void'  <<]
        function_declarator:  [>>  b'V::f()'  <<]
          qualified_identifier:  [>>  b'V::f'  <<]
            namespace_identifier:  [>>  b'V'  <<]
            ::
            identifier:  [>>  b'f'  <<]
          parameter_list:  [>>  b'()'  <<]
            (
            )
        compound_statement:  [>>  b'{}'  <<]
          {
          }
      namespace_definition:  [>>  b'namespace V\n    {\n        void g();\n    }'  <<]
        namespace
        namespace_identifier:  [>>  b'V'  <<]
        declaration_list:  [>>  b'{\n        void g();\n    }'  <<]
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
      }
  function_definition:  [>>  b'void Q::V::g() {}'  <<]
    primitive_type:  [>>  b'void'  <<]
    function_declarator:  [>>  b'Q::V::g()'  <<]
      qualified_identifier:  [>>  b'Q::V::g'  <<]
        namespace_identifier:  [>>  b'Q'  <<]
        ::
        qualified_identifier:  [>>  b'V::g'  <<]
          namespace_identifier:  [>>  b'V'  <<]
          ::
          identifier:  [>>  b'g'  <<]
      parameter_list:  [>>  b'()'  <<]
        (
        )
    compound_statement:  [>>  b'{}'  <<]
      {
      }
(translation_unit (namespace_definition name: (namespace_identifier) body: (declaration_list (namespace_definition name: (namespace_identifier) body: (declaration_list (declaration type: (primitive_type) declarator: (function_declarator declarator: (identifier) parameters: (parameter_list))))) (function_definition type: (primitive_type) declarator: (function_declarator declarator: (qualified_identifier scope: (namespace_identifier) name: (identifier)) parameters: (parameter_list)) body: (compound_statement)) (namespace_definition name: (namespace_identifier) body: (declaration_list (declaration type: (primitive_type) declarator: (function_declarator declarator: (identifier) parameters: (parameter_list))))))) (function_definition type: (primitive_type) declarator: (function_declarator declarator: (qualified_identifier scope: (namespace_identifier) name: (qualified_identifier scope: (namespace_identifier) name: (identifier))) parameters: (parameter_list)) body: (compound_statement)))
