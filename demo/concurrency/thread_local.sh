translation_unit:  [>>  b'// \xe5\xae\x9a\xe4\xb9\x89\xe4\xb8\x80\xe4\xb8\xaa thread_local \xe7\xba\xbf\xe7\xa8\x8b\xe6\x9c\x9f\xe5\x8f\x98\xe9\x87\x8f, thread_local \xe8\x83\xbd\xe4\xb8\x8e static \xe6\x88\x96 extern \xe4\xb8\x80\xe5\x90\x8c\xe5\x87\xba\xe7\x8e\xb0\xef\xbc\x8c\xe5\xae\x83\xe4\xbb\xac\xe7\x94\xa8\xe4\xba\x8e\xe8\xb0\x83\xe6\x95\xb4\xe9\x93\xbe\xe6\x8e\xa5\n// \xe7\xba\xbf\xe7\xa8\x8b\xe5\xb1\x80\xe9\x83\xa8\xe5\x8f\x98\xe9\x87\x8f\xef\xbc\x8c\xe5\xbd\x93\xe5\x89\x8d\xe7\xba\xbf\xe7\xa8\x8b\xe5\xbc\x95\xe7\x94\xa8\xe7\x9a\x84\xe6\x98\xaf\xe5\xbd\x93\xe5\x89\x8d\xe5\xb1\x80\xe9\x83\xa8\xe5\x80\xbc\n// thread_local\xe4\xbd\x9c\xe4\xb8\xba\xe7\xb1\xbb\xe6\x88\x90\xe5\x91\x98\xe5\x8f\x98\xe9\x87\x8f\xe6\x97\xb6\xe5\xbf\x85\xe9\xa1\xbb\xe6\x98\xafstatic\xe7\x9a\x84\n#include <thread>\n#include <mutex>\nthread_local int count = 1;\nthread_local static int link_inline;\nthread_local extern int link_extern;\nstd::mutex count_mutex;\nvoid increase_count(const std::string &thread_name)\n{\n}\nclass A\n{\npublic:\n    thread_local static int key;\n};\nthread_local int A::key = 12;\nint main()\n{\n    std::thread athread(increase_count, "a"), bthread(increase_count, "b");\n    thread_local A *a;\n    thread_local A *b = new A();\n    athread.join();\n    bthread.join();\n}\n'  <<]
  comment:  [>>  b'// \xe5\xae\x9a\xe4\xb9\x89\xe4\xb8\x80\xe4\xb8\xaa thread_local \xe7\xba\xbf\xe7\xa8\x8b\xe6\x9c\x9f\xe5\x8f\x98\xe9\x87\x8f, thread_local \xe8\x83\xbd\xe4\xb8\x8e static \xe6\x88\x96 extern \xe4\xb8\x80\xe5\x90\x8c\xe5\x87\xba\xe7\x8e\xb0\xef\xbc\x8c\xe5\xae\x83\xe4\xbb\xac\xe7\x94\xa8\xe4\xba\x8e\xe8\xb0\x83\xe6\x95\xb4\xe9\x93\xbe\xe6\x8e\xa5'  <<]
  comment:  [>>  b'// \xe7\xba\xbf\xe7\xa8\x8b\xe5\xb1\x80\xe9\x83\xa8\xe5\x8f\x98\xe9\x87\x8f\xef\xbc\x8c\xe5\xbd\x93\xe5\x89\x8d\xe7\xba\xbf\xe7\xa8\x8b\xe5\xbc\x95\xe7\x94\xa8\xe7\x9a\x84\xe6\x98\xaf\xe5\xbd\x93\xe5\x89\x8d\xe5\xb1\x80\xe9\x83\xa8\xe5\x80\xbc'  <<]
  comment:  [>>  b'// thread_local\xe4\xbd\x9c\xe4\xb8\xba\xe7\xb1\xbb\xe6\x88\x90\xe5\x91\x98\xe5\x8f\x98\xe9\x87\x8f\xe6\x97\xb6\xe5\xbf\x85\xe9\xa1\xbb\xe6\x98\xafstatic\xe7\x9a\x84'  <<]
  preproc_include:  [>>  b'#include <thread>\n'  <<]
    #include
    system_lib_string:  [>>  b'<thread>'  <<]
  preproc_include:  [>>  b'#include <mutex>\n'  <<]
    #include
    system_lib_string:  [>>  b'<mutex>'  <<]
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
  function_definition:  [>>  b'void increase_count(const std::string &thread_name)\n{\n}'  <<]
    primitive_type:  [>>  b'void'  <<]
    function_declarator:  [>>  b'increase_count(const std::string &thread_name)'  <<]
      identifier:  [>>  b'increase_count'  <<]
      parameter_list:  [>>  b'(const std::string &thread_name)'  <<]
        (
        parameter_declaration:  [>>  b'const std::string &thread_name'  <<]
          type_qualifier:  [>>  b'const'  <<]
            const
          qualified_identifier:  [>>  b'std::string'  <<]
            namespace_identifier:  [>>  b'std'  <<]
            ::
            type_identifier:  [>>  b'string'  <<]
          reference_declarator:  [>>  b'&thread_name'  <<]
            &
            identifier:  [>>  b'thread_name'  <<]
        )
    compound_statement:  [>>  b'{\n}'  <<]
      {
      }
  class_specifier:  [>>  b'class A\n{\npublic:\n    thread_local static int key;\n}'  <<]
    class
    type_identifier:  [>>  b'A'  <<]
    field_declaration_list:  [>>  b'{\npublic:\n    thread_local static int key;\n}'  <<]
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
  function_definition:  [>>  b'int main()\n{\n    std::thread athread(increase_count, "a"), bthread(increase_count, "b");\n    thread_local A *a;\n    thread_local A *b = new A();\n    athread.join();\n    bthread.join();\n}'  <<]
    primitive_type:  [>>  b'int'  <<]
    function_declarator:  [>>  b'main()'  <<]
      identifier:  [>>  b'main'  <<]
      parameter_list:  [>>  b'()'  <<]
        (
        )
    compound_statement:  [>>  b'{\n    std::thread athread(increase_count, "a"), bthread(increase_count, "b");\n    thread_local A *a;\n    thread_local A *b = new A();\n    athread.join();\n    bthread.join();\n}'  <<]
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
      declaration:  [>>  b'thread_local A *a;'  <<]
        storage_class_specifier:  [>>  b'thread_local'  <<]
          thread_local
        type_identifier:  [>>  b'A'  <<]
        pointer_declarator:  [>>  b'*a'  <<]
          *
          identifier:  [>>  b'a'  <<]
        ;
      declaration:  [>>  b'thread_local A *b = new A();'  <<]
        storage_class_specifier:  [>>  b'thread_local'  <<]
          thread_local
        type_identifier:  [>>  b'A'  <<]
        init_declarator:  [>>  b'*b = new A()'  <<]
          pointer_declarator:  [>>  b'*b'  <<]
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
(translation_unit (comment) (comment) (comment) (preproc_include path: (system_lib_string)) (preproc_include path: (system_lib_string)) (declaration (storage_class_specifier) type: (primitive_type) declarator: (init_declarator declarator: (identifier) value: (number_literal))) (declaration (storage_class_specifier) (storage_class_specifier) type: (primitive_type) declarator: (identifier)) (declaration (storage_class_specifier) (storage_class_specifier) type: (primitive_type) declarator: (identifier)) (declaration type: (qualified_identifier scope: (namespace_identifier) name: (type_identifier)) declarator: (identifier)) (function_definition type: (primitive_type) declarator: (function_declarator declarator: (identifier) parameters: (parameter_list (parameter_declaration (type_qualifier) type: (qualified_identifier scope: (namespace_identifier) name: (type_identifier)) declarator: (reference_declarator (identifier))))) body: (compound_statement)) (class_specifier name: (type_identifier) body: (field_declaration_list (access_specifier) (field_declaration (storage_class_specifier) (storage_class_specifier) type: (primitive_type) declarator: (field_identifier)))) (declaration (storage_class_specifier) type: (primitive_type) declarator: (init_declarator declarator: (qualified_identifier scope: (namespace_identifier) name: (identifier)) value: (number_literal))) (function_definition type: (primitive_type) declarator: (function_declarator declarator: (identifier) parameters: (parameter_list)) body: (compound_statement (declaration type: (qualified_identifier scope: (namespace_identifier) name: (type_identifier)) declarator: (init_declarator declarator: (identifier) value: (argument_list (identifier) (string_literal (string_content)))) declarator: (init_declarator declarator: (identifier) value: (argument_list (identifier) (string_literal (string_content))))) (declaration (storage_class_specifier) type: (type_identifier) declarator: (pointer_declarator declarator: (identifier))) (declaration (storage_class_specifier) type: (type_identifier) declarator: (init_declarator declarator: (pointer_declarator declarator: (identifier)) value: (new_expression type: (type_identifier) arguments: (argument_list)))) (expression_statement (call_expression function: (field_expression argument: (identifier) field: (field_identifier)) arguments: (argument_list))) (expression_statement (call_expression function: (field_expression argument: (identifier) field: (field_identifier)) arguments: (argument_list))))))
