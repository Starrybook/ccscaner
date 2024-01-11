translation_unit:  [>>  b'thread_local int count = 1;\nthread_local static int link_inline;\nthread_local extern int link_extern;\nstd::mutex count_mutex;\nvoid increase_rage(const std::string& thread_name)\n{} \nclass A\n{\npublic:\n    thread_local static int key; \n};\nthread_local int A::key = 12;\nint main()\n{\n    std::thread athread(increase_count, "a"), bthread(increase_count, "b");\n    thread_local A* a;\n    thread_local A* b = new A();\n    athread.join();\n    bthread.join();\n}\n'  <<]
  declaration:  [>>  b'thread_local int count = 1;'  <<]
    storage_class_specifier:  [>>  b'thread_local'  <<]
      thread_local
    primitive_type:  [>>  b'int'  <<]
    init_declarator:  [>>  b'count = 1'  <<]
      identifier:  [>>  b'count'  <<]
      =
      number_literal:  [>>  b'1'  <<]
    ;
  declaration:  [>>  b'thread_local static int link_inline;'  <<]
    storage_class_specifier:  [>>  b'thread_local'  <<]
      thread_local
    storage_class_specifier:  [>>  b'static'  <<]
      static
    primitive_type:  [>>  b'int'  <<]
    identifier:  [>>  b'link_inline'  <<]
    ;
  declaration:  [>>  b'thread_local extern int link_extern;'  <<]
    storage_class_specifier:  [>>  b'thread_local'  <<]
      thread_local
    storage_class_specifier:  [>>  b'extern'  <<]
      extern
    primitive_type:  [>>  b'int'  <<]
    identifier:  [>>  b'link_extern'  <<]
    ;
  declaration:  [>>  b'std::mutex count_mutex;'  <<]
    qualified_identifier:  [>>  b'std::mutex'  <<]
      namespace_identifier:  [>>  b'std'  <<]
      ::
      type_identifier:  [>>  b'mutex'  <<]
    identifier:  [>>  b'count_mutex'  <<]
    ;
  function_definition:  [>>  b'void increase_rage(const std::string& thread_name)\n{}'  <<]
    primitive_type:  [>>  b'void'  <<]
    function_declarator:  [>>  b'increase_rage(const std::string& thread_name)'  <<]
      identifier:  [>>  b'increase_rage'  <<]
      parameter_list:  [>>  b'(const std::string& thread_name)'  <<]
        (
        parameter_declaration:  [>>  b'const std::string& thread_name'  <<]
          type_qualifier:  [>>  b'const'  <<]
            const
          qualified_identifier:  [>>  b'std::string'  <<]
            namespace_identifier:  [>>  b'std'  <<]
            ::
            type_identifier:  [>>  b'string'  <<]
          reference_declarator:  [>>  b'& thread_name'  <<]
            &
            identifier:  [>>  b'thread_name'  <<]
        )
    compound_statement:  [>>  b'{}'  <<]
      {
      }
  class_specifier:  [>>  b'class A\n{\npublic:\n    thread_local static int key; \n}'  <<]
    class
    type_identifier:  [>>  b'A'  <<]
    field_declaration_list:  [>>  b'{\npublic:\n    thread_local static int key; \n}'  <<]
      {
      access_specifier:  [>>  b'public'  <<]
        public
      :
      field_declaration:  [>>  b'thread_local static int key;'  <<]
        storage_class_specifier:  [>>  b'thread_local'  <<]
          thread_local
        storage_class_specifier:  [>>  b'static'  <<]
          static
        primitive_type:  [>>  b'int'  <<]
        field_identifier:  [>>  b'key'  <<]
        ;
      }
  ;
  declaration:  [>>  b'thread_local int A::key = 12;'  <<]
    storage_class_specifier:  [>>  b'thread_local'  <<]
      thread_local
    primitive_type:  [>>  b'int'  <<]
    init_declarator:  [>>  b'A::key = 12'  <<]
      qualified_identifier:  [>>  b'A::key'  <<]
        namespace_identifier:  [>>  b'A'  <<]
        ::
        identifier:  [>>  b'key'  <<]
      =
      number_literal:  [>>  b'12'  <<]
    ;
  function_definition:  [>>  b'int main()\n{\n    std::thread athread(increase_count, "a"), bthread(increase_count, "b");\n    thread_local A* a;\n    thread_local A* b = new A();\n    athread.join();\n    bthread.join();\n}'  <<]
    primitive_type:  [>>  b'int'  <<]
    function_declarator:  [>>  b'main()'  <<]
      identifier:  [>>  b'main'  <<]
      parameter_list:  [>>  b'()'  <<]
        (
        )
    compound_statement:  [>>  b'{\n    std::thread athread(increase_count, "a"), bthread(increase_count, "b");\n    thread_local A* a;\n    thread_local A* b = new A();\n    athread.join();\n    bthread.join();\n}'  <<]
      {
      declaration:  [>>  b'std::thread athread(increase_count, "a"), bthread(increase_count, "b");'  <<]
        qualified_identifier:  [>>  b'std::thread'  <<]
          namespace_identifier:  [>>  b'std'  <<]
          ::
          type_identifier:  [>>  b'thread'  <<]
        init_declarator:  [>>  b'athread(increase_count, "a")'  <<]
          identifier:  [>>  b'athread'  <<]
          argument_list:  [>>  b'(increase_count, "a")'  <<]
            (
            identifier:  [>>  b'increase_count'  <<]
            ,
            string_literal:  [>>  b'"a"'  <<]
              "
              string_content:  [>>  b'a'  <<]
              "
            )
        ,
        init_declarator:  [>>  b'bthread(increase_count, "b")'  <<]
          identifier:  [>>  b'bthread'  <<]
          argument_list:  [>>  b'(increase_count, "b")'  <<]
            (
            identifier:  [>>  b'increase_count'  <<]
            ,
            string_literal:  [>>  b'"b"'  <<]
              "
              string_content:  [>>  b'b'  <<]
              "
            )
        ;
      declaration:  [>>  b'thread_local A* a;'  <<]
        storage_class_specifier:  [>>  b'thread_local'  <<]
          thread_local
        type_identifier:  [>>  b'A'  <<]
        pointer_declarator:  [>>  b'* a'  <<]
          *
          identifier:  [>>  b'a'  <<]
        ;
      declaration:  [>>  b'thread_local A* b = new A();'  <<]
        storage_class_specifier:  [>>  b'thread_local'  <<]
          thread_local
        type_identifier:  [>>  b'A'  <<]
        init_declarator:  [>>  b'* b = new A()'  <<]
          pointer_declarator:  [>>  b'* b'  <<]
            *
            identifier:  [>>  b'b'  <<]
          =
          new_expression:  [>>  b'new A()'  <<]
            new
            type_identifier:  [>>  b'A'  <<]
            argument_list:  [>>  b'()'  <<]
              (
              )
        ;
      expression_statement:  [>>  b'athread.join();'  <<]
        call_expression:  [>>  b'athread.join()'  <<]
          field_expression:  [>>  b'athread.join'  <<]
            identifier:  [>>  b'athread'  <<]
            .
            field_identifier:  [>>  b'join'  <<]
          argument_list:  [>>  b'()'  <<]
            (
            )
        ;
      expression_statement:  [>>  b'bthread.join();'  <<]
        call_expression:  [>>  b'bthread.join()'  <<]
          field_expression:  [>>  b'bthread.join'  <<]
            identifier:  [>>  b'bthread'  <<]
            .
            field_identifier:  [>>  b'join'  <<]
          argument_list:  [>>  b'()'  <<]
            (
            )
        ;
      }
(translation_unit (declaration (storage_class_specifier) type: (primitive_type) declarator: (init_declarator declarator: (identifier) value: (number_literal))) (declaration (storage_class_specifier) (storage_class_specifier) type: (primitive_type) declarator: (identifier)) (declaration (storage_class_specifier) (storage_class_specifier) type: (primitive_type) declarator: (identifier)) (declaration type: (qualified_identifier scope: (namespace_identifier) name: (type_identifier)) declarator: (identifier)) (function_definition type: (primitive_type) declarator: (function_declarator declarator: (identifier) parameters: (parameter_list (parameter_declaration (type_qualifier) type: (qualified_identifier scope: (namespace_identifier) name: (type_identifier)) declarator: (reference_declarator (identifier))))) body: (compound_statement)) (class_specifier name: (type_identifier) body: (field_declaration_list (access_specifier) (field_declaration (storage_class_specifier) (storage_class_specifier) type: (primitive_type) declarator: (field_identifier)))) (declaration (storage_class_specifier) type: (primitive_type) declarator: (init_declarator declarator: (qualified_identifier scope: (namespace_identifier) name: (identifier)) value: (number_literal))) (function_definition type: (primitive_type) declarator: (function_declarator declarator: (identifier) parameters: (parameter_list)) body: (compound_statement (declaration type: (qualified_identifier scope: (namespace_identifier) name: (type_identifier)) declarator: (init_declarator declarator: (identifier) value: (argument_list (identifier) (string_literal (string_content)))) declarator: (init_declarator declarator: (identifier) value: (argument_list (identifier) (string_literal (string_content))))) (declaration (storage_class_specifier) type: (type_identifier) declarator: (pointer_declarator declarator: (identifier))) (declaration (storage_class_specifier) type: (type_identifier) declarator: (init_declarator declarator: (pointer_declarator declarator: (identifier)) value: (new_expression type: (type_identifier) arguments: (argument_list)))) (expression_statement (call_expression function: (field_expression argument: (identifier) field: (field_identifier)) arguments: (argument_list))) (expression_statement (call_expression function: (field_expression argument: (identifier) field: (field_identifier)) arguments: (argument_list))))))
