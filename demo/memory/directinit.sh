translation_unit:  [>>  b'#include <iostream>\n\nclass MyClass {\npublic:\n    MyClass() =default;\n    MyClass(int val) : data(val) {}\n    MyClass(std::string s, int val):name(s),data(val){}\n    MyClass(const MyClass&a):name(a.name),data(a.data){}\nprivate:\n    int data;\n    std::string name;\n};\nstruct Point {\n    int x;\n    int y;\n};\nint main() {\n    std::string s1("test");\n    double d(3.14);\n    int v{42};\n    MyClass obj1(42);\n    MyClass obj2(obj1);\n    Point p = {3, 7};\n    return 0;\n}\n'  <<]
  preproc_include:  [>>  b'#include <iostream>\n'  <<]
    #include
    system_lib_string:  [>>  b'<iostream>'  <<]
  class_specifier:  [>>  b'class MyClass {\npublic:\n    MyClass() =default;\n    MyClass(int val) : data(val) {}\n    MyClass(std::string s, int val):name(s),data(val){}\n    MyClass(const MyClass&a):name(a.name),data(a.data){}\nprivate:\n    int data;\n    std::string name;\n}'  <<]
    class
    type_identifier:  [>>  b'MyClass'  <<]
    field_declaration_list:  [>>  b'{\npublic:\n    MyClass() =default;\n    MyClass(int val) : data(val) {}\n    MyClass(std::string s, int val):name(s),data(val){}\n    MyClass(const MyClass&a):name(a.name),data(a.data){}\nprivate:\n    int data;\n    std::string name;\n}'  <<]
      {
      access_specifier:  [>>  b'public'  <<]
        public
      :
      function_definition:  [>>  b'MyClass() =default;'  <<]
        function_declarator:  [>>  b'MyClass()'  <<]
          identifier:  [>>  b'MyClass'  <<]
          parameter_list:  [>>  b'()'  <<]
            (
            )
        default_method_clause:  [>>  b'=default;'  <<]
          =
          default
          ;
      function_definition:  [>>  b'MyClass(int val) : data(val) {}'  <<]
        function_declarator:  [>>  b'MyClass(int val)'  <<]
          identifier:  [>>  b'MyClass'  <<]
          parameter_list:  [>>  b'(int val)'  <<]
            (
            parameter_declaration:  [>>  b'int val'  <<]
              primitive_type:  [>>  b'int'  <<]
              identifier:  [>>  b'val'  <<]
            )
        field_initializer_list:  [>>  b': data(val)'  <<]
          :
          field_initializer:  [>>  b'data(val)'  <<]
            field_identifier:  [>>  b'data'  <<]
            argument_list:  [>>  b'(val)'  <<]
              (
              identifier:  [>>  b'val'  <<]
              )
        compound_statement:  [>>  b'{}'  <<]
          {
          }
      function_definition:  [>>  b'MyClass(std::string s, int val):name(s),data(val){}'  <<]
        function_declarator:  [>>  b'MyClass(std::string s, int val)'  <<]
          identifier:  [>>  b'MyClass'  <<]
          parameter_list:  [>>  b'(std::string s, int val)'  <<]
            (
            parameter_declaration:  [>>  b'std::string s'  <<]
              qualified_identifier:  [>>  b'std::string'  <<]
                namespace_identifier:  [>>  b'std'  <<]
                ::
                type_identifier:  [>>  b'string'  <<]
              identifier:  [>>  b's'  <<]
            ,
            parameter_declaration:  [>>  b'int val'  <<]
              primitive_type:  [>>  b'int'  <<]
              identifier:  [>>  b'val'  <<]
            )
        field_initializer_list:  [>>  b':name(s),data(val)'  <<]
          :
          field_initializer:  [>>  b'name(s)'  <<]
            field_identifier:  [>>  b'name'  <<]
            argument_list:  [>>  b'(s)'  <<]
              (
              identifier:  [>>  b's'  <<]
              )
          ,
          field_initializer:  [>>  b'data(val)'  <<]
            field_identifier:  [>>  b'data'  <<]
            argument_list:  [>>  b'(val)'  <<]
              (
              identifier:  [>>  b'val'  <<]
              )
        compound_statement:  [>>  b'{}'  <<]
          {
          }
      function_definition:  [>>  b'MyClass(const MyClass&a):name(a.name),data(a.data){}'  <<]
        function_declarator:  [>>  b'MyClass(const MyClass&a)'  <<]
          identifier:  [>>  b'MyClass'  <<]
          parameter_list:  [>>  b'(const MyClass&a)'  <<]
            (
            parameter_declaration:  [>>  b'const MyClass&a'  <<]
              type_qualifier:  [>>  b'const'  <<]
                const
              type_identifier:  [>>  b'MyClass'  <<]
              reference_declarator:  [>>  b'&a'  <<]
                &
                identifier:  [>>  b'a'  <<]
            )
        field_initializer_list:  [>>  b':name(a.name),data(a.data)'  <<]
          :
          field_initializer:  [>>  b'name(a.name)'  <<]
            field_identifier:  [>>  b'name'  <<]
            argument_list:  [>>  b'(a.name)'  <<]
              (
              field_expression:  [>>  b'a.name'  <<]
                identifier:  [>>  b'a'  <<]
                .
                field_identifier:  [>>  b'name'  <<]
              )
          ,
          field_initializer:  [>>  b'data(a.data)'  <<]
            field_identifier:  [>>  b'data'  <<]
            argument_list:  [>>  b'(a.data)'  <<]
              (
              field_expression:  [>>  b'a.data'  <<]
                identifier:  [>>  b'a'  <<]
                .
                field_identifier:  [>>  b'data'  <<]
              )
        compound_statement:  [>>  b'{}'  <<]
          {
          }
      access_specifier:  [>>  b'private'  <<]
        private
      :
      field_declaration:  [>>  b'int data;'  <<]
        primitive_type:  [>>  b'int'  <<]
        field_identifier:  [>>  b'data'  <<]
        ;
      field_declaration:  [>>  b'std::string name;'  <<]
        qualified_identifier:  [>>  b'std::string'  <<]
          namespace_identifier:  [>>  b'std'  <<]
          ::
          type_identifier:  [>>  b'string'  <<]
        field_identifier:  [>>  b'name'  <<]
        ;
      }
  ;
  struct_specifier:  [>>  b'struct Point {\n    int x;\n    int y;\n}'  <<]
    struct
    type_identifier:  [>>  b'Point'  <<]
    field_declaration_list:  [>>  b'{\n    int x;\n    int y;\n}'  <<]
      {
      field_declaration:  [>>  b'int x;'  <<]
        primitive_type:  [>>  b'int'  <<]
        field_identifier:  [>>  b'x'  <<]
        ;
      field_declaration:  [>>  b'int y;'  <<]
        primitive_type:  [>>  b'int'  <<]
        field_identifier:  [>>  b'y'  <<]
        ;
      }
  ;
  function_definition:  [>>  b'int main() {\n    std::string s1("test");\n    double d(3.14);\n    int v{42};\n    MyClass obj1(42);\n    MyClass obj2(obj1);\n    Point p = {3, 7};\n    return 0;\n}'  <<]
    primitive_type:  [>>  b'int'  <<]
    function_declarator:  [>>  b'main()'  <<]
      identifier:  [>>  b'main'  <<]
      parameter_list:  [>>  b'()'  <<]
        (
        )
    compound_statement:  [>>  b'{\n    std::string s1("test");\n    double d(3.14);\n    int v{42};\n    MyClass obj1(42);\n    MyClass obj2(obj1);\n    Point p = {3, 7};\n    return 0;\n}'  <<]
      {
      declaration:  [>>  b'std::string s1("test");'  <<]
        qualified_identifier:  [>>  b'std::string'  <<]
          namespace_identifier:  [>>  b'std'  <<]
          ::
          type_identifier:  [>>  b'string'  <<]
        init_declarator:  [>>  b's1("test")'  <<]
          identifier:  [>>  b's1'  <<]
          argument_list:  [>>  b'("test")'  <<]
            (
            string_literal:  [>>  b'"test"'  <<]
              "
              string_content:  [>>  b'test'  <<]
              "
            )
        ;
      declaration:  [>>  b'double d(3.14);'  <<]
        primitive_type:  [>>  b'double'  <<]
        init_declarator:  [>>  b'd(3.14)'  <<]
          identifier:  [>>  b'd'  <<]
          argument_list:  [>>  b'(3.14)'  <<]
            (
            number_literal:  [>>  b'3.14'  <<]
            )
        ;
      declaration:  [>>  b'int v{42};'  <<]
        primitive_type:  [>>  b'int'  <<]
        init_declarator:  [>>  b'v{42}'  <<]
          identifier:  [>>  b'v'  <<]
          initializer_list:  [>>  b'{42}'  <<]
            {
            number_literal:  [>>  b'42'  <<]
            }
        ;
      declaration:  [>>  b'MyClass obj1(42);'  <<]
        type_identifier:  [>>  b'MyClass'  <<]
        init_declarator:  [>>  b'obj1(42)'  <<]
          identifier:  [>>  b'obj1'  <<]
          argument_list:  [>>  b'(42)'  <<]
            (
            number_literal:  [>>  b'42'  <<]
            )
        ;
      declaration:  [>>  b'MyClass obj2(obj1);'  <<]
        type_identifier:  [>>  b'MyClass'  <<]
        function_declarator:  [>>  b'obj2(obj1)'  <<]
          identifier:  [>>  b'obj2'  <<]
          parameter_list:  [>>  b'(obj1)'  <<]
            (
            parameter_declaration:  [>>  b'obj1'  <<]
              type_identifier:  [>>  b'obj1'  <<]
            )
        ;
      declaration:  [>>  b'Point p = {3, 7};'  <<]
        type_identifier:  [>>  b'Point'  <<]
        init_declarator:  [>>  b'p = {3, 7}'  <<]
          identifier:  [>>  b'p'  <<]
          =
          initializer_list:  [>>  b'{3, 7}'  <<]
            {
            number_literal:  [>>  b'3'  <<]
            ,
            number_literal:  [>>  b'7'  <<]
            }
        ;
      return_statement:  [>>  b'return 0;'  <<]
        return
        number_literal:  [>>  b'0'  <<]
        ;
      }
(translation_unit (preproc_include path: (system_lib_string)) (class_specifier name: (type_identifier) body: (field_declaration_list (access_specifier) (function_definition declarator: (function_declarator declarator: (identifier) parameters: (parameter_list)) (default_method_clause)) (function_definition declarator: (function_declarator declarator: (identifier) parameters: (parameter_list (parameter_declaration type: (primitive_type) declarator: (identifier)))) (field_initializer_list (field_initializer (field_identifier) (argument_list (identifier)))) body: (compound_statement)) (function_definition declarator: (function_declarator declarator: (identifier) parameters: (parameter_list (parameter_declaration type: (qualified_identifier scope: (namespace_identifier) name: (type_identifier)) declarator: (identifier)) (parameter_declaration type: (primitive_type) declarator: (identifier)))) (field_initializer_list (field_initializer (field_identifier) (argument_list (identifier))) (field_initializer (field_identifier) (argument_list (identifier)))) body: (compound_statement)) (function_definition declarator: (function_declarator declarator: (identifier) parameters: (parameter_list (parameter_declaration (type_qualifier) type: (type_identifier) declarator: (reference_declarator (identifier))))) (field_initializer_list (field_initializer (field_identifier) (argument_list (field_expression argument: (identifier) field: (field_identifier)))) (field_initializer (field_identifier) (argument_list (field_expression argument: (identifier) field: (field_identifier))))) body: (compound_statement)) (access_specifier) (field_declaration type: (primitive_type) declarator: (field_identifier)) (field_declaration type: (qualified_identifier scope: (namespace_identifier) name: (type_identifier)) declarator: (field_identifier)))) (struct_specifier name: (type_identifier) body: (field_declaration_list (field_declaration type: (primitive_type) declarator: (field_identifier)) (field_declaration type: (primitive_type) declarator: (field_identifier)))) (function_definition type: (primitive_type) declarator: (function_declarator declarator: (identifier) parameters: (parameter_list)) body: (compound_statement (declaration type: (qualified_identifier scope: (namespace_identifier) name: (type_identifier)) declarator: (init_declarator declarator: (identifier) value: (argument_list (string_literal (string_content))))) (declaration type: (primitive_type) declarator: (init_declarator declarator: (identifier) value: (argument_list (number_literal)))) (declaration type: (primitive_type) declarator: (init_declarator declarator: (identifier) value: (initializer_list (number_literal)))) (declaration type: (type_identifier) declarator: (init_declarator declarator: (identifier) value: (argument_list (number_literal)))) (declaration type: (type_identifier) declarator: (function_declarator declarator: (identifier) parameters: (parameter_list (parameter_declaration type: (type_identifier))))) (declaration type: (type_identifier) declarator: (init_declarator declarator: (identifier) value: (initializer_list (number_literal) (number_literal)))) (return_statement (number_literal)))))
