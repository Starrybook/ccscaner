translation_unit:  [>>  b'#include <iostream>\n#include <memory>\nclass MyClass\n{\npublic:\n    int data;\n    MyClass() = default;\n    MyClass(int value) : data(value) {}\n    ~MyClass() {}\n};\nint main()\n{\n    std::shared_ptr<MyClass> sp1 = std::make_shared<MyClass>(42);\n    std::shared_ptr<MyClass> sp2(new MyClass(2));\n    std::shared_ptr<MyClass> sp3(sp1);\n    std::unique_ptr<MyClass> up1(new MyClass);\n    std::unique_ptr<std::string> up2(new std::string("Hello world!"));\n    std::unique_ptr<std::string> up3(new std::string("Hello China!"));\n    std::unique_ptr<int[]> up4(new int[5]);\n    std::weak_ptr<MyClass> wp1;\n    sp1.use_count();\n    sp3->data = 1;\n    up2 = std::move(up3);\n    up3.reset();\n    wp1 = sp1;\n    std::shared_ptr<MyClass> sp4 = wp1.lock();\n    return 0;\n}\n'  <<]
  preproc_include:  [>>  b'#include <iostream>\n'  <<]
    #include
    system_lib_string:  [>>  b'<iostream>'  <<]
  preproc_include:  [>>  b'#include <memory>\n'  <<]
    #include
    system_lib_string:  [>>  b'<memory>'  <<]
  class_specifier:  [>>  b'class MyClass\n{\npublic:\n    int data;\n    MyClass() = default;\n    MyClass(int value) : data(value) {}\n    ~MyClass() {}\n}'  <<]
    class
    type_identifier:  [>>  b'MyClass'  <<]
    field_declaration_list:  [>>  b'{\npublic:\n    int data;\n    MyClass() = default;\n    MyClass(int value) : data(value) {}\n    ~MyClass() {}\n}'  <<]
      {
      access_specifier:  [>>  b'public'  <<]
        public
      :
      field_declaration:  [>>  b'int data;'  <<]
        primitive_type:  [>>  b'int'  <<]
        field_identifier:  [>>  b'data'  <<]
        ;
      function_definition:  [>>  b'MyClass() = default;'  <<]
        function_declarator:  [>>  b'MyClass()'  <<]
          identifier:  [>>  b'MyClass'  <<]
          parameter_list:  [>>  b'()'  <<]
            (
            )
        default_method_clause:  [>>  b'= default;'  <<]
          =
          default
          ;
      function_definition:  [>>  b'MyClass(int value) : data(value) {}'  <<]
        function_declarator:  [>>  b'MyClass(int value)'  <<]
          identifier:  [>>  b'MyClass'  <<]
          parameter_list:  [>>  b'(int value)'  <<]
            (
            parameter_declaration:  [>>  b'int value'  <<]
              primitive_type:  [>>  b'int'  <<]
              identifier:  [>>  b'value'  <<]
            )
        field_initializer_list:  [>>  b': data(value)'  <<]
          :
          field_initializer:  [>>  b'data(value)'  <<]
            field_identifier:  [>>  b'data'  <<]
            argument_list:  [>>  b'(value)'  <<]
              (
              identifier:  [>>  b'value'  <<]
              )
        compound_statement:  [>>  b'{}'  <<]
          {
          }
      function_definition:  [>>  b'~MyClass() {}'  <<]
        function_declarator:  [>>  b'~MyClass()'  <<]
          destructor_name:  [>>  b'~MyClass'  <<]
            ~
            identifier:  [>>  b'MyClass'  <<]
          parameter_list:  [>>  b'()'  <<]
            (
            )
        compound_statement:  [>>  b'{}'  <<]
          {
          }
      }
  ;
  function_definition:  [>>  b'int main()\n{\n    std::shared_ptr<MyClass> sp1 = std::make_shared<MyClass>(42);\n    std::shared_ptr<MyClass> sp2(new MyClass(2));\n    std::shared_ptr<MyClass> sp3(sp1);\n    std::unique_ptr<MyClass> up1(new MyClass);\n    std::unique_ptr<std::string> up2(new std::string("Hello world!"));\n    std::unique_ptr<std::string> up3(new std::string("Hello China!"));\n    std::unique_ptr<int[]> up4(new int[5]);\n    std::weak_ptr<MyClass> wp1;\n    sp1.use_count();\n    sp3->data = 1;\n    up2 = std::move(up3);\n    up3.reset();\n    wp1 = sp1;\n    std::shared_ptr<MyClass> sp4 = wp1.lock();\n    return 0;\n}'  <<]
    primitive_type:  [>>  b'int'  <<]
    function_declarator:  [>>  b'main()'  <<]
      identifier:  [>>  b'main'  <<]
      parameter_list:  [>>  b'()'  <<]
        (
        )
    compound_statement:  [>>  b'{\n    std::shared_ptr<MyClass> sp1 = std::make_shared<MyClass>(42);\n    std::shared_ptr<MyClass> sp2(new MyClass(2));\n    std::shared_ptr<MyClass> sp3(sp1);\n    std::unique_ptr<MyClass> up1(new MyClass);\n    std::unique_ptr<std::string> up2(new std::string("Hello world!"));\n    std::unique_ptr<std::string> up3(new std::string("Hello China!"));\n    std::unique_ptr<int[]> up4(new int[5]);\n    std::weak_ptr<MyClass> wp1;\n    sp1.use_count();\n    sp3->data = 1;\n    up2 = std::move(up3);\n    up3.reset();\n    wp1 = sp1;\n    std::shared_ptr<MyClass> sp4 = wp1.lock();\n    return 0;\n}'  <<]
      {
      declaration:  [>>  b'std::shared_ptr<MyClass> sp1 = std::make_shared<MyClass>(42);'  <<]
        qualified_identifier:  [>>  b'std::shared_ptr<MyClass>'  <<]
          namespace_identifier:  [>>  b'std'  <<]
          ::
          template_type:  [>>  b'shared_ptr<MyClass>'  <<]
            type_identifier:  [>>  b'shared_ptr'  <<]
            template_argument_list:  [>>  b'<MyClass>'  <<]
              <
              type_descriptor:  [>>  b'MyClass'  <<]
                type_identifier:  [>>  b'MyClass'  <<]
              >
        init_declarator:  [>>  b'sp1 = std::make_shared<MyClass>(42)'  <<]
          identifier:  [>>  b'sp1'  <<]
          =
          call_expression:  [>>  b'std::make_shared<MyClass>(42)'  <<]
            qualified_identifier:  [>>  b'std::make_shared<MyClass>'  <<]
              namespace_identifier:  [>>  b'std'  <<]
              ::
              template_function:  [>>  b'make_shared<MyClass>'  <<]
                identifier:  [>>  b'make_shared'  <<]
                template_argument_list:  [>>  b'<MyClass>'  <<]
                  <
                  type_descriptor:  [>>  b'MyClass'  <<]
                    type_identifier:  [>>  b'MyClass'  <<]
                  >
            argument_list:  [>>  b'(42)'  <<]
              (
              number_literal:  [>>  b'42'  <<]
              )
        ;
      declaration:  [>>  b'std::shared_ptr<MyClass> sp2(new MyClass(2));'  <<]
        qualified_identifier:  [>>  b'std::shared_ptr<MyClass>'  <<]
          namespace_identifier:  [>>  b'std'  <<]
          ::
          template_type:  [>>  b'shared_ptr<MyClass>'  <<]
            type_identifier:  [>>  b'shared_ptr'  <<]
            template_argument_list:  [>>  b'<MyClass>'  <<]
              <
              type_descriptor:  [>>  b'MyClass'  <<]
                type_identifier:  [>>  b'MyClass'  <<]
              >
        init_declarator:  [>>  b'sp2(new MyClass(2))'  <<]
          identifier:  [>>  b'sp2'  <<]
          argument_list:  [>>  b'(new MyClass(2))'  <<]
            (
            new_expression:  [>>  b'new MyClass(2)'  <<]
              new
              type_identifier:  [>>  b'MyClass'  <<]
              argument_list:  [>>  b'(2)'  <<]
                (
                number_literal:  [>>  b'2'  <<]
                )
            )
        ;
      declaration:  [>>  b'std::shared_ptr<MyClass> sp3(sp1);'  <<]
        qualified_identifier:  [>>  b'std::shared_ptr<MyClass>'  <<]
          namespace_identifier:  [>>  b'std'  <<]
          ::
          template_type:  [>>  b'shared_ptr<MyClass>'  <<]
            type_identifier:  [>>  b'shared_ptr'  <<]
            template_argument_list:  [>>  b'<MyClass>'  <<]
              <
              type_descriptor:  [>>  b'MyClass'  <<]
                type_identifier:  [>>  b'MyClass'  <<]
              >
        function_declarator:  [>>  b'sp3(sp1)'  <<]
          identifier:  [>>  b'sp3'  <<]
          parameter_list:  [>>  b'(sp1)'  <<]
            (
            parameter_declaration:  [>>  b'sp1'  <<]
              type_identifier:  [>>  b'sp1'  <<]
            )
        ;
      declaration:  [>>  b'std::unique_ptr<MyClass> up1(new MyClass);'  <<]
        qualified_identifier:  [>>  b'std::unique_ptr<MyClass>'  <<]
          namespace_identifier:  [>>  b'std'  <<]
          ::
          template_type:  [>>  b'unique_ptr<MyClass>'  <<]
            type_identifier:  [>>  b'unique_ptr'  <<]
            template_argument_list:  [>>  b'<MyClass>'  <<]
              <
              type_descriptor:  [>>  b'MyClass'  <<]
                type_identifier:  [>>  b'MyClass'  <<]
              >
        init_declarator:  [>>  b'up1(new MyClass)'  <<]
          identifier:  [>>  b'up1'  <<]
          argument_list:  [>>  b'(new MyClass)'  <<]
            (
            new_expression:  [>>  b'new MyClass'  <<]
              new
              type_identifier:  [>>  b'MyClass'  <<]
            )
        ;
      declaration:  [>>  b'std::unique_ptr<std::string> up2(new std::string("Hello world!"));'  <<]
        qualified_identifier:  [>>  b'std::unique_ptr<std::string>'  <<]
          namespace_identifier:  [>>  b'std'  <<]
          ::
          template_type:  [>>  b'unique_ptr<std::string>'  <<]
            type_identifier:  [>>  b'unique_ptr'  <<]
            template_argument_list:  [>>  b'<std::string>'  <<]
              <
              type_descriptor:  [>>  b'std::string'  <<]
                qualified_identifier:  [>>  b'std::string'  <<]
                  namespace_identifier:  [>>  b'std'  <<]
                  ::
                  type_identifier:  [>>  b'string'  <<]
              >
        init_declarator:  [>>  b'up2(new std::string("Hello world!"))'  <<]
          identifier:  [>>  b'up2'  <<]
          argument_list:  [>>  b'(new std::string("Hello world!"))'  <<]
            (
            new_expression:  [>>  b'new std::string("Hello world!")'  <<]
              new
              qualified_identifier:  [>>  b'std::string'  <<]
                namespace_identifier:  [>>  b'std'  <<]
                ::
                type_identifier:  [>>  b'string'  <<]
              argument_list:  [>>  b'("Hello world!")'  <<]
                (
                string_literal:  [>>  b'"Hello world!"'  <<]
                  "
                  string_content:  [>>  b'Hello world!'  <<]
                  "
                )
            )
        ;
      declaration:  [>>  b'std::unique_ptr<std::string> up3(new std::string("Hello China!"));'  <<]
        qualified_identifier:  [>>  b'std::unique_ptr<std::string>'  <<]
          namespace_identifier:  [>>  b'std'  <<]
          ::
          template_type:  [>>  b'unique_ptr<std::string>'  <<]
            type_identifier:  [>>  b'unique_ptr'  <<]
            template_argument_list:  [>>  b'<std::string>'  <<]
              <
              type_descriptor:  [>>  b'std::string'  <<]
                qualified_identifier:  [>>  b'std::string'  <<]
                  namespace_identifier:  [>>  b'std'  <<]
                  ::
                  type_identifier:  [>>  b'string'  <<]
              >
        init_declarator:  [>>  b'up3(new std::string("Hello China!"))'  <<]
          identifier:  [>>  b'up3'  <<]
          argument_list:  [>>  b'(new std::string("Hello China!"))'  <<]
            (
            new_expression:  [>>  b'new std::string("Hello China!")'  <<]
              new
              qualified_identifier:  [>>  b'std::string'  <<]
                namespace_identifier:  [>>  b'std'  <<]
                ::
                type_identifier:  [>>  b'string'  <<]
              argument_list:  [>>  b'("Hello China!")'  <<]
                (
                string_literal:  [>>  b'"Hello China!"'  <<]
                  "
                  string_content:  [>>  b'Hello China!'  <<]
                  "
                )
            )
        ;
      declaration:  [>>  b'std::unique_ptr<int[]> up4(new int[5]);'  <<]
        qualified_identifier:  [>>  b'std::unique_ptr<int[]>'  <<]
          namespace_identifier:  [>>  b'std'  <<]
          ::
          template_type:  [>>  b'unique_ptr<int[]>'  <<]
            type_identifier:  [>>  b'unique_ptr'  <<]
            template_argument_list:  [>>  b'<int[]>'  <<]
              <
              type_descriptor:  [>>  b'int[]'  <<]
                primitive_type:  [>>  b'int'  <<]
                abstract_array_declarator:  [>>  b'[]'  <<]
                  [
                  ]
              >
        init_declarator:  [>>  b'up4(new int[5])'  <<]
          identifier:  [>>  b'up4'  <<]
          argument_list:  [>>  b'(new int[5])'  <<]
            (
            new_expression:  [>>  b'new int[5]'  <<]
              new
              primitive_type:  [>>  b'int'  <<]
              new_declarator:  [>>  b'[5]'  <<]
                [
                number_literal:  [>>  b'5'  <<]
                ]
            )
        ;
      declaration:  [>>  b'std::weak_ptr<MyClass> wp1;'  <<]
        qualified_identifier:  [>>  b'std::weak_ptr<MyClass>'  <<]
          namespace_identifier:  [>>  b'std'  <<]
          ::
          template_type:  [>>  b'weak_ptr<MyClass>'  <<]
            type_identifier:  [>>  b'weak_ptr'  <<]
            template_argument_list:  [>>  b'<MyClass>'  <<]
              <
              type_descriptor:  [>>  b'MyClass'  <<]
                type_identifier:  [>>  b'MyClass'  <<]
              >
        identifier:  [>>  b'wp1'  <<]
        ;
      expression_statement:  [>>  b'sp1.use_count();'  <<]
        call_expression:  [>>  b'sp1.use_count()'  <<]
          field_expression:  [>>  b'sp1.use_count'  <<]
            identifier:  [>>  b'sp1'  <<]
            .
            field_identifier:  [>>  b'use_count'  <<]
          argument_list:  [>>  b'()'  <<]
            (
            )
        ;
      expression_statement:  [>>  b'sp3->data = 1;'  <<]
        assignment_expression:  [>>  b'sp3->data = 1'  <<]
          field_expression:  [>>  b'sp3->data'  <<]
            identifier:  [>>  b'sp3'  <<]
            ->
            field_identifier:  [>>  b'data'  <<]
          =
          number_literal:  [>>  b'1'  <<]
        ;
      expression_statement:  [>>  b'up2 = std::move(up3);'  <<]
        assignment_expression:  [>>  b'up2 = std::move(up3)'  <<]
          identifier:  [>>  b'up2'  <<]
          =
          call_expression:  [>>  b'std::move(up3)'  <<]
            qualified_identifier:  [>>  b'std::move'  <<]
              namespace_identifier:  [>>  b'std'  <<]
              ::
              identifier:  [>>  b'move'  <<]
            argument_list:  [>>  b'(up3)'  <<]
              (
              identifier:  [>>  b'up3'  <<]
              )
        ;
      expression_statement:  [>>  b'up3.reset();'  <<]
        call_expression:  [>>  b'up3.reset()'  <<]
          field_expression:  [>>  b'up3.reset'  <<]
            identifier:  [>>  b'up3'  <<]
            .
            field_identifier:  [>>  b'reset'  <<]
          argument_list:  [>>  b'()'  <<]
            (
            )
        ;
      expression_statement:  [>>  b'wp1 = sp1;'  <<]
        assignment_expression:  [>>  b'wp1 = sp1'  <<]
          identifier:  [>>  b'wp1'  <<]
          =
          identifier:  [>>  b'sp1'  <<]
        ;
      declaration:  [>>  b'std::shared_ptr<MyClass> sp4 = wp1.lock();'  <<]
        qualified_identifier:  [>>  b'std::shared_ptr<MyClass>'  <<]
          namespace_identifier:  [>>  b'std'  <<]
          ::
          template_type:  [>>  b'shared_ptr<MyClass>'  <<]
            type_identifier:  [>>  b'shared_ptr'  <<]
            template_argument_list:  [>>  b'<MyClass>'  <<]
              <
              type_descriptor:  [>>  b'MyClass'  <<]
                type_identifier:  [>>  b'MyClass'  <<]
              >
        init_declarator:  [>>  b'sp4 = wp1.lock()'  <<]
          identifier:  [>>  b'sp4'  <<]
          =
          call_expression:  [>>  b'wp1.lock()'  <<]
            field_expression:  [>>  b'wp1.lock'  <<]
              identifier:  [>>  b'wp1'  <<]
              .
              field_identifier:  [>>  b'lock'  <<]
            argument_list:  [>>  b'()'  <<]
              (
              )
        ;
      return_statement:  [>>  b'return 0;'  <<]
        return
        number_literal:  [>>  b'0'  <<]
        ;
      }
(translation_unit (preproc_include path: (system_lib_string)) (preproc_include path: (system_lib_string)) (class_specifier name: (type_identifier) body: (field_declaration_list (access_specifier) (field_declaration type: (primitive_type) declarator: (field_identifier)) (function_definition declarator: (function_declarator declarator: (identifier) parameters: (parameter_list)) (default_method_clause)) (function_definition declarator: (function_declarator declarator: (identifier) parameters: (parameter_list (parameter_declaration type: (primitive_type) declarator: (identifier)))) (field_initializer_list (field_initializer (field_identifier) (argument_list (identifier)))) body: (compound_statement)) (function_definition declarator: (function_declarator declarator: (destructor_name (identifier)) parameters: (parameter_list)) body: (compound_statement)))) (function_definition type: (primitive_type) declarator: (function_declarator declarator: (identifier) parameters: (parameter_list)) body: (compound_statement (declaration type: (qualified_identifier scope: (namespace_identifier) name: (template_type name: (type_identifier) arguments: (template_argument_list (type_descriptor type: (type_identifier))))) declarator: (init_declarator declarator: (identifier) value: (call_expression function: (qualified_identifier scope: (namespace_identifier) name: (template_function name: (identifier) arguments: (template_argument_list (type_descriptor type: (type_identifier))))) arguments: (argument_list (number_literal))))) (declaration type: (qualified_identifier scope: (namespace_identifier) name: (template_type name: (type_identifier) arguments: (template_argument_list (type_descriptor type: (type_identifier))))) declarator: (init_declarator declarator: (identifier) value: (argument_list (new_expression type: (type_identifier) arguments: (argument_list (number_literal)))))) (declaration type: (qualified_identifier scope: (namespace_identifier) name: (template_type name: (type_identifier) arguments: (template_argument_list (type_descriptor type: (type_identifier))))) declarator: (function_declarator declarator: (identifier) parameters: (parameter_list (parameter_declaration type: (type_identifier))))) (declaration type: (qualified_identifier scope: (namespace_identifier) name: (template_type name: (type_identifier) arguments: (template_argument_list (type_descriptor type: (type_identifier))))) declarator: (init_declarator declarator: (identifier) value: (argument_list (new_expression type: (type_identifier))))) (declaration type: (qualified_identifier scope: (namespace_identifier) name: (template_type name: (type_identifier) arguments: (template_argument_list (type_descriptor type: (qualified_identifier scope: (namespace_identifier) name: (type_identifier)))))) declarator: (init_declarator declarator: (identifier) value: (argument_list (new_expression type: (qualified_identifier scope: (namespace_identifier) name: (type_identifier)) arguments: (argument_list (string_literal (string_content))))))) (declaration type: (qualified_identifier scope: (namespace_identifier) name: (template_type name: (type_identifier) arguments: (template_argument_list (type_descriptor type: (qualified_identifier scope: (namespace_identifier) name: (type_identifier)))))) declarator: (init_declarator declarator: (identifier) value: (argument_list (new_expression type: (qualified_identifier scope: (namespace_identifier) name: (type_identifier)) arguments: (argument_list (string_literal (string_content))))))) (declaration type: (qualified_identifier scope: (namespace_identifier) name: (template_type name: (type_identifier) arguments: (template_argument_list (type_descriptor type: (primitive_type) declarator: (abstract_array_declarator))))) declarator: (init_declarator declarator: (identifier) value: (argument_list (new_expression type: (primitive_type) declarator: (new_declarator length: (number_literal)))))) (declaration type: (qualified_identifier scope: (namespace_identifier) name: (template_type name: (type_identifier) arguments: (template_argument_list (type_descriptor type: (type_identifier))))) declarator: (identifier)) (expression_statement (call_expression function: (field_expression argument: (identifier) field: (field_identifier)) arguments: (argument_list))) (expression_statement (assignment_expression left: (field_expression argument: (identifier) field: (field_identifier)) right: (number_literal))) (expression_statement (assignment_expression left: (identifier) right: (call_expression function: (qualified_identifier scope: (namespace_identifier) name: (identifier)) arguments: (argument_list (identifier))))) (expression_statement (call_expression function: (field_expression argument: (identifier) field: (field_identifier)) arguments: (argument_list))) (expression_statement (assignment_expression left: (identifier) right: (identifier))) (declaration type: (qualified_identifier scope: (namespace_identifier) name: (template_type name: (type_identifier) arguments: (template_argument_list (type_descriptor type: (type_identifier))))) declarator: (init_declarator declarator: (identifier) value: (call_expression function: (field_expression argument: (identifier) field: (field_identifier)) arguments: (argument_list)))) (return_statement (number_literal)))))
