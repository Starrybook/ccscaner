translation_unit:  [>>  b'struct A\n{\n    int i;\n    A(int i) : i(i)\n    {\n    }\n    ~A()\n    {\n    }\n};\nclass Base\n{\npublic:\n    virtual ~Base() {}\n};\nclass Derived : public Base\n{\n    ~Derived() {}\n};\n\nint main()\n{\n    {\n        A a(2);\n    }\n    Base *b = new Derived;\n    delete b; // \xe5\xae\x89\xe5\x85\xa8\n    return 0;\n}\n'  <<]
  struct_specifier:  [>>  b'struct A\n{\n    int i;\n    A(int i) : i(i)\n    {\n    }\n    ~A()\n    {\n    }\n}'  <<]
    struct
    type_identifier:  [>>  b'A'  <<]
    field_declaration_list:  [>>  b'{\n    int i;\n    A(int i) : i(i)\n    {\n    }\n    ~A()\n    {\n    }\n}'  <<]
      {
      field_declaration:  [>>  b'int i;'  <<]
        primitive_type:  [>>  b'int'  <<]
        field_identifier:  [>>  b'i'  <<]
        ;
      function_definition:  [>>  b'A(int i) : i(i)\n    {\n    }'  <<]
        function_declarator:  [>>  b'A(int i)'  <<]
          identifier:  [>>  b'A'  <<]
          parameter_list:  [>>  b'(int i)'  <<]
            (
            parameter_declaration:  [>>  b'int i'  <<]
              primitive_type:  [>>  b'int'  <<]
              identifier:  [>>  b'i'  <<]
            )
        field_initializer_list:  [>>  b': i(i)'  <<]
          :
          field_initializer:  [>>  b'i(i)'  <<]
            field_identifier:  [>>  b'i'  <<]
            argument_list:  [>>  b'(i)'  <<]
              (
              identifier:  [>>  b'i'  <<]
              )
        compound_statement:  [>>  b'{\n    }'  <<]
          {
          }
      function_definition:  [>>  b'~A()\n    {\n    }'  <<]
        function_declarator:  [>>  b'~A()'  <<]
          destructor_name:  [>>  b'~A'  <<]
            ~
            identifier:  [>>  b'A'  <<]
          parameter_list:  [>>  b'()'  <<]
            (
            )
        compound_statement:  [>>  b'{\n    }'  <<]
          {
          }
      }
  ;
  class_specifier:  [>>  b'class Base\n{\npublic:\n    virtual ~Base() {}\n}'  <<]
    class
    type_identifier:  [>>  b'Base'  <<]
    field_declaration_list:  [>>  b'{\npublic:\n    virtual ~Base() {}\n}'  <<]
      {
      access_specifier:  [>>  b'public'  <<]
        public
      :
      function_definition:  [>>  b'virtual ~Base() {}'  <<]
        virtual:  [>>  b'virtual'  <<]
          virtual
        function_declarator:  [>>  b'~Base()'  <<]
          destructor_name:  [>>  b'~Base'  <<]
            ~
            identifier:  [>>  b'Base'  <<]
          parameter_list:  [>>  b'()'  <<]
            (
            )
        compound_statement:  [>>  b'{}'  <<]
          {
          }
      }
  ;
  class_specifier:  [>>  b'class Derived : public Base\n{\n    ~Derived() {}\n}'  <<]
    class
    type_identifier:  [>>  b'Derived'  <<]
    base_class_clause:  [>>  b': public Base'  <<]
      :
      access_specifier:  [>>  b'public'  <<]
        public
      type_identifier:  [>>  b'Base'  <<]
    field_declaration_list:  [>>  b'{\n    ~Derived() {}\n}'  <<]
      {
      function_definition:  [>>  b'~Derived() {}'  <<]
        function_declarator:  [>>  b'~Derived()'  <<]
          destructor_name:  [>>  b'~Derived'  <<]
            ~
            identifier:  [>>  b'Derived'  <<]
          parameter_list:  [>>  b'()'  <<]
            (
            )
        compound_statement:  [>>  b'{}'  <<]
          {
          }
      }
  ;
  function_definition:  [>>  b'int main()\n{\n    {\n        A a(2);\n    }\n    Base *b = new Derived;\n    delete b; // \xe5\xae\x89\xe5\x85\xa8\n    return 0;\n}'  <<]
    primitive_type:  [>>  b'int'  <<]
    function_declarator:  [>>  b'main()'  <<]
      identifier:  [>>  b'main'  <<]
      parameter_list:  [>>  b'()'  <<]
        (
        )
    compound_statement:  [>>  b'{\n    {\n        A a(2);\n    }\n    Base *b = new Derived;\n    delete b; // \xe5\xae\x89\xe5\x85\xa8\n    return 0;\n}'  <<]
      {
      compound_statement:  [>>  b'{\n        A a(2);\n    }'  <<]
        {
        declaration:  [>>  b'A a(2);'  <<]
          type_identifier:  [>>  b'A'  <<]
          init_declarator:  [>>  b'a(2)'  <<]
            identifier:  [>>  b'a'  <<]
            argument_list:  [>>  b'(2)'  <<]
              (
              number_literal:  [>>  b'2'  <<]
              )
          ;
        }
      declaration:  [>>  b'Base *b = new Derived;'  <<]
        type_identifier:  [>>  b'Base'  <<]
        init_declarator:  [>>  b'*b = new Derived'  <<]
          pointer_declarator:  [>>  b'*b'  <<]
            *
            identifier:  [>>  b'b'  <<]
          =
          new_expression:  [>>  b'new Derived'  <<]
            new
            type_identifier:  [>>  b'Derived'  <<]
        ;
      expression_statement:  [>>  b'delete b;'  <<]
        delete_expression:  [>>  b'delete b'  <<]
          delete
          identifier:  [>>  b'b'  <<]
        ;
      comment:  [>>  b'// \xe5\xae\x89\xe5\x85\xa8'  <<]
      return_statement:  [>>  b'return 0;'  <<]
        return
        number_literal:  [>>  b'0'  <<]
        ;
      }
(translation_unit (struct_specifier name: (type_identifier) body: (field_declaration_list (field_declaration type: (primitive_type) declarator: (field_identifier)) (function_definition declarator: (function_declarator declarator: (identifier) parameters: (parameter_list (parameter_declaration type: (primitive_type) declarator: (identifier)))) (field_initializer_list (field_initializer (field_identifier) (argument_list (identifier)))) body: (compound_statement)) (function_definition declarator: (function_declarator declarator: (destructor_name (identifier)) parameters: (parameter_list)) body: (compound_statement)))) (class_specifier name: (type_identifier) body: (field_declaration_list (access_specifier) (function_definition (virtual) declarator: (function_declarator declarator: (destructor_name (identifier)) parameters: (parameter_list)) body: (compound_statement)))) (class_specifier name: (type_identifier) (base_class_clause (access_specifier) (type_identifier)) body: (field_declaration_list (function_definition declarator: (function_declarator declarator: (destructor_name (identifier)) parameters: (parameter_list)) body: (compound_statement)))) (function_definition type: (primitive_type) declarator: (function_declarator declarator: (identifier) parameters: (parameter_list)) body: (compound_statement (compound_statement (declaration type: (type_identifier) declarator: (init_declarator declarator: (identifier) value: (argument_list (number_literal))))) (declaration type: (type_identifier) declarator: (init_declarator declarator: (pointer_declarator declarator: (identifier)) value: (new_expression type: (type_identifier)))) (expression_statement (delete_expression (identifier))) (comment) (return_statement (number_literal)))))
