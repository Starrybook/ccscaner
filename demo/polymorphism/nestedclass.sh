translation_unit:  [>>  b'class enclose // \xe5\xa4\x96\xe5\x9b\xb4\xe7\xb1\xbb\n{\nprivate:\n    int x;\n    static int s;\n    class nested // \xe7\xa7\x81\xe6\x9c\x89\xe6\x88\x90\xe5\x91\x98\n    {\n        public:\n            void display() {}\n    };\n    nested nestedObj;\npublic:\n    struct inner; // \xe5\x89\x8d\xe7\xbd\xae\xe5\xa3\xb0\xe6\x98\x8e\xe5\x8f\xaf\xe9\x80\x89\n    struct inner  // \xe5\xb5\x8c\xe5\xa5\x97\xe7\xb1\xbb\xef\xbc\x8c\xe4\xb8\x8e\xe5\xa4\x96\xe5\x9b\xb4\xe7\xb1\xbb\xe7\x9a\x84this\xe6\x8c\x87\xe9\x92\x88\xe4\xb8\x8d\xe4\xba\x92\xe9\x80\x9a\n    {\n        void f(int i)\n        {\n            s = i; // OK\xef\xbc\x9a\xe5\x8f\xaf\xe4\xbb\xa5\xe8\xb5\x8b\xe5\x80\xbc\xe7\xbb\x99\xe9\x9d\x99\xe6\x80\x81 enclose::s, \xe9\x9d\x9e\xe9\x9d\x99\xe6\x80\x81\xe4\xb8\x8d\xe8\xa1\x8c\n        }\n        void g(enclose *p, int i)\n        {\n            p->x = i; // OK\xef\xbc\x9a\xe8\xb5\x8b\xe5\x80\xbc\xe7\xbb\x99 enclose::x\n        }\n    };\n    void accessNestedClass()\n    {\n        nestedObj.display();\n    }\n};\n'  <<]
  class_specifier:  [>>  b'class enclose // \xe5\xa4\x96\xe5\x9b\xb4\xe7\xb1\xbb\n{\nprivate:\n    int x;\n    static int s;\n    class nested // \xe7\xa7\x81\xe6\x9c\x89\xe6\x88\x90\xe5\x91\x98\n    {\n        public:\n            void display() {}\n    };\n    nested nestedObj;\npublic:\n    struct inner; // \xe5\x89\x8d\xe7\xbd\xae\xe5\xa3\xb0\xe6\x98\x8e\xe5\x8f\xaf\xe9\x80\x89\n    struct inner  // \xe5\xb5\x8c\xe5\xa5\x97\xe7\xb1\xbb\xef\xbc\x8c\xe4\xb8\x8e\xe5\xa4\x96\xe5\x9b\xb4\xe7\xb1\xbb\xe7\x9a\x84this\xe6\x8c\x87\xe9\x92\x88\xe4\xb8\x8d\xe4\xba\x92\xe9\x80\x9a\n    {\n        void f(int i)\n        {\n            s = i; // OK\xef\xbc\x9a\xe5\x8f\xaf\xe4\xbb\xa5\xe8\xb5\x8b\xe5\x80\xbc\xe7\xbb\x99\xe9\x9d\x99\xe6\x80\x81 enclose::s, \xe9\x9d\x9e\xe9\x9d\x99\xe6\x80\x81\xe4\xb8\x8d\xe8\xa1\x8c\n        }\n        void g(enclose *p, int i)\n        {\n            p->x = i; // OK\xef\xbc\x9a\xe8\xb5\x8b\xe5\x80\xbc\xe7\xbb\x99 enclose::x\n        }\n    };\n    void accessNestedClass()\n    {\n        nestedObj.display();\n    }\n}'  <<]
    class
    type_identifier:  [>>  b'enclose'  <<]
    comment:  [>>  b'// \xe5\xa4\x96\xe5\x9b\xb4\xe7\xb1\xbb'  <<]
    field_declaration_list:  [>>  b'{\nprivate:\n    int x;\n    static int s;\n    class nested // \xe7\xa7\x81\xe6\x9c\x89\xe6\x88\x90\xe5\x91\x98\n    {\n        public:\n            void display() {}\n    };\n    nested nestedObj;\npublic:\n    struct inner; // \xe5\x89\x8d\xe7\xbd\xae\xe5\xa3\xb0\xe6\x98\x8e\xe5\x8f\xaf\xe9\x80\x89\n    struct inner  // \xe5\xb5\x8c\xe5\xa5\x97\xe7\xb1\xbb\xef\xbc\x8c\xe4\xb8\x8e\xe5\xa4\x96\xe5\x9b\xb4\xe7\xb1\xbb\xe7\x9a\x84this\xe6\x8c\x87\xe9\x92\x88\xe4\xb8\x8d\xe4\xba\x92\xe9\x80\x9a\n    {\n        void f(int i)\n        {\n            s = i; // OK\xef\xbc\x9a\xe5\x8f\xaf\xe4\xbb\xa5\xe8\xb5\x8b\xe5\x80\xbc\xe7\xbb\x99\xe9\x9d\x99\xe6\x80\x81 enclose::s, \xe9\x9d\x9e\xe9\x9d\x99\xe6\x80\x81\xe4\xb8\x8d\xe8\xa1\x8c\n        }\n        void g(enclose *p, int i)\n        {\n            p->x = i; // OK\xef\xbc\x9a\xe8\xb5\x8b\xe5\x80\xbc\xe7\xbb\x99 enclose::x\n        }\n    };\n    void accessNestedClass()\n    {\n        nestedObj.display();\n    }\n}'  <<]
      {
      access_specifier:  [>>  b'private'  <<]
        private
      :
      field_declaration:  [>>  b'int x;'  <<]
        primitive_type:  [>>  b'int'  <<]
        field_identifier:  [>>  b'x'  <<]
        ;
      field_declaration:  [>>  b'static int s;'  <<]
        storage_class_specifier:  [>>  b'static'  <<]
          static
        primitive_type:  [>>  b'int'  <<]
        field_identifier:  [>>  b's'  <<]
        ;
      field_declaration:  [>>  b'class nested // \xe7\xa7\x81\xe6\x9c\x89\xe6\x88\x90\xe5\x91\x98\n    {\n        public:\n            void display() {}\n    };'  <<]
        class_specifier:  [>>  b'class nested // \xe7\xa7\x81\xe6\x9c\x89\xe6\x88\x90\xe5\x91\x98\n    {\n        public:\n            void display() {}\n    }'  <<]
          class
          type_identifier:  [>>  b'nested'  <<]
          comment:  [>>  b'// \xe7\xa7\x81\xe6\x9c\x89\xe6\x88\x90\xe5\x91\x98'  <<]
          field_declaration_list:  [>>  b'{\n        public:\n            void display() {}\n    }'  <<]
            {
            access_specifier:  [>>  b'public'  <<]
              public
            :
            function_definition:  [>>  b'void display() {}'  <<]
              primitive_type:  [>>  b'void'  <<]
              function_declarator:  [>>  b'display()'  <<]
                field_identifier:  [>>  b'display'  <<]
                parameter_list:  [>>  b'()'  <<]
                  (
                  )
              compound_statement:  [>>  b'{}'  <<]
                {
                }
            }
        ;
      field_declaration:  [>>  b'nested nestedObj;'  <<]
        type_identifier:  [>>  b'nested'  <<]
        field_identifier:  [>>  b'nestedObj'  <<]
        ;
      access_specifier:  [>>  b'public'  <<]
        public
      :
      field_declaration:  [>>  b'struct inner;'  <<]
        struct_specifier:  [>>  b'struct inner'  <<]
          struct
          type_identifier:  [>>  b'inner'  <<]
        ;
      comment:  [>>  b'// \xe5\x89\x8d\xe7\xbd\xae\xe5\xa3\xb0\xe6\x98\x8e\xe5\x8f\xaf\xe9\x80\x89'  <<]
      field_declaration:  [>>  b'struct inner  // \xe5\xb5\x8c\xe5\xa5\x97\xe7\xb1\xbb\xef\xbc\x8c\xe4\xb8\x8e\xe5\xa4\x96\xe5\x9b\xb4\xe7\xb1\xbb\xe7\x9a\x84this\xe6\x8c\x87\xe9\x92\x88\xe4\xb8\x8d\xe4\xba\x92\xe9\x80\x9a\n    {\n        void f(int i)\n        {\n            s = i; // OK\xef\xbc\x9a\xe5\x8f\xaf\xe4\xbb\xa5\xe8\xb5\x8b\xe5\x80\xbc\xe7\xbb\x99\xe9\x9d\x99\xe6\x80\x81 enclose::s, \xe9\x9d\x9e\xe9\x9d\x99\xe6\x80\x81\xe4\xb8\x8d\xe8\xa1\x8c\n        }\n        void g(enclose *p, int i)\n        {\n            p->x = i; // OK\xef\xbc\x9a\xe8\xb5\x8b\xe5\x80\xbc\xe7\xbb\x99 enclose::x\n        }\n    };'  <<]
        struct_specifier:  [>>  b'struct inner  // \xe5\xb5\x8c\xe5\xa5\x97\xe7\xb1\xbb\xef\xbc\x8c\xe4\xb8\x8e\xe5\xa4\x96\xe5\x9b\xb4\xe7\xb1\xbb\xe7\x9a\x84this\xe6\x8c\x87\xe9\x92\x88\xe4\xb8\x8d\xe4\xba\x92\xe9\x80\x9a\n    {\n        void f(int i)\n        {\n            s = i; // OK\xef\xbc\x9a\xe5\x8f\xaf\xe4\xbb\xa5\xe8\xb5\x8b\xe5\x80\xbc\xe7\xbb\x99\xe9\x9d\x99\xe6\x80\x81 enclose::s, \xe9\x9d\x9e\xe9\x9d\x99\xe6\x80\x81\xe4\xb8\x8d\xe8\xa1\x8c\n        }\n        void g(enclose *p, int i)\n        {\n            p->x = i; // OK\xef\xbc\x9a\xe8\xb5\x8b\xe5\x80\xbc\xe7\xbb\x99 enclose::x\n        }\n    }'  <<]
          struct
          type_identifier:  [>>  b'inner'  <<]
          comment:  [>>  b'// \xe5\xb5\x8c\xe5\xa5\x97\xe7\xb1\xbb\xef\xbc\x8c\xe4\xb8\x8e\xe5\xa4\x96\xe5\x9b\xb4\xe7\xb1\xbb\xe7\x9a\x84this\xe6\x8c\x87\xe9\x92\x88\xe4\xb8\x8d\xe4\xba\x92\xe9\x80\x9a'  <<]
          field_declaration_list:  [>>  b'{\n        void f(int i)\n        {\n            s = i; // OK\xef\xbc\x9a\xe5\x8f\xaf\xe4\xbb\xa5\xe8\xb5\x8b\xe5\x80\xbc\xe7\xbb\x99\xe9\x9d\x99\xe6\x80\x81 enclose::s, \xe9\x9d\x9e\xe9\x9d\x99\xe6\x80\x81\xe4\xb8\x8d\xe8\xa1\x8c\n        }\n        void g(enclose *p, int i)\n        {\n            p->x = i; // OK\xef\xbc\x9a\xe8\xb5\x8b\xe5\x80\xbc\xe7\xbb\x99 enclose::x\n        }\n    }'  <<]
            {
            function_definition:  [>>  b'void f(int i)\n        {\n            s = i; // OK\xef\xbc\x9a\xe5\x8f\xaf\xe4\xbb\xa5\xe8\xb5\x8b\xe5\x80\xbc\xe7\xbb\x99\xe9\x9d\x99\xe6\x80\x81 enclose::s, \xe9\x9d\x9e\xe9\x9d\x99\xe6\x80\x81\xe4\xb8\x8d\xe8\xa1\x8c\n        }'  <<]
              primitive_type:  [>>  b'void'  <<]
              function_declarator:  [>>  b'f(int i)'  <<]
                field_identifier:  [>>  b'f'  <<]
                parameter_list:  [>>  b'(int i)'  <<]
                  (
                  parameter_declaration:  [>>  b'int i'  <<]
                    primitive_type:  [>>  b'int'  <<]
                    identifier:  [>>  b'i'  <<]
                  )
              compound_statement:  [>>  b'{\n            s = i; // OK\xef\xbc\x9a\xe5\x8f\xaf\xe4\xbb\xa5\xe8\xb5\x8b\xe5\x80\xbc\xe7\xbb\x99\xe9\x9d\x99\xe6\x80\x81 enclose::s, \xe9\x9d\x9e\xe9\x9d\x99\xe6\x80\x81\xe4\xb8\x8d\xe8\xa1\x8c\n        }'  <<]
                {
                expression_statement:  [>>  b's = i;'  <<]
                  assignment_expression:  [>>  b's = i'  <<]
                    identifier:  [>>  b's'  <<]
                    =
                    identifier:  [>>  b'i'  <<]
                  ;
                comment:  [>>  b'// OK\xef\xbc\x9a\xe5\x8f\xaf\xe4\xbb\xa5\xe8\xb5\x8b\xe5\x80\xbc\xe7\xbb\x99\xe9\x9d\x99\xe6\x80\x81 enclose::s, \xe9\x9d\x9e\xe9\x9d\x99\xe6\x80\x81\xe4\xb8\x8d\xe8\xa1\x8c'  <<]
                }
            function_definition:  [>>  b'void g(enclose *p, int i)\n        {\n            p->x = i; // OK\xef\xbc\x9a\xe8\xb5\x8b\xe5\x80\xbc\xe7\xbb\x99 enclose::x\n        }'  <<]
              primitive_type:  [>>  b'void'  <<]
              function_declarator:  [>>  b'g(enclose *p, int i)'  <<]
                field_identifier:  [>>  b'g'  <<]
                parameter_list:  [>>  b'(enclose *p, int i)'  <<]
                  (
                  parameter_declaration:  [>>  b'enclose *p'  <<]
                    type_identifier:  [>>  b'enclose'  <<]
                    pointer_declarator:  [>>  b'*p'  <<]
                      *
                      identifier:  [>>  b'p'  <<]
                  ,
                  parameter_declaration:  [>>  b'int i'  <<]
                    primitive_type:  [>>  b'int'  <<]
                    identifier:  [>>  b'i'  <<]
                  )
              compound_statement:  [>>  b'{\n            p->x = i; // OK\xef\xbc\x9a\xe8\xb5\x8b\xe5\x80\xbc\xe7\xbb\x99 enclose::x\n        }'  <<]
                {
                expression_statement:  [>>  b'p->x = i;'  <<]
                  assignment_expression:  [>>  b'p->x = i'  <<]
                    field_expression:  [>>  b'p->x'  <<]
                      identifier:  [>>  b'p'  <<]
                      ->
                      field_identifier:  [>>  b'x'  <<]
                    =
                    identifier:  [>>  b'i'  <<]
                  ;
                comment:  [>>  b'// OK\xef\xbc\x9a\xe8\xb5\x8b\xe5\x80\xbc\xe7\xbb\x99 enclose::x'  <<]
                }
            }
        ;
      function_definition:  [>>  b'void accessNestedClass()\n    {\n        nestedObj.display();\n    }'  <<]
        primitive_type:  [>>  b'void'  <<]
        function_declarator:  [>>  b'accessNestedClass()'  <<]
          field_identifier:  [>>  b'accessNestedClass'  <<]
          parameter_list:  [>>  b'()'  <<]
            (
            )
        compound_statement:  [>>  b'{\n        nestedObj.display();\n    }'  <<]
          {
          expression_statement:  [>>  b'nestedObj.display();'  <<]
            call_expression:  [>>  b'nestedObj.display()'  <<]
              field_expression:  [>>  b'nestedObj.display'  <<]
                identifier:  [>>  b'nestedObj'  <<]
                .
                field_identifier:  [>>  b'display'  <<]
              argument_list:  [>>  b'()'  <<]
                (
                )
            ;
          }
      }
  ;
(translation_unit (class_specifier name: (type_identifier) (comment) body: (field_declaration_list (access_specifier) (field_declaration type: (primitive_type) declarator: (field_identifier)) (field_declaration (storage_class_specifier) type: (primitive_type) declarator: (field_identifier)) (field_declaration type: (class_specifier name: (type_identifier) (comment) body: (field_declaration_list (access_specifier) (function_definition type: (primitive_type) declarator: (function_declarator declarator: (field_identifier) parameters: (parameter_list)) body: (compound_statement))))) (field_declaration type: (type_identifier) declarator: (field_identifier)) (access_specifier) (field_declaration type: (struct_specifier name: (type_identifier))) (comment) (field_declaration type: (struct_specifier name: (type_identifier) (comment) body: (field_declaration_list (function_definition type: (primitive_type) declarator: (function_declarator declarator: (field_identifier) parameters: (parameter_list (parameter_declaration type: (primitive_type) declarator: (identifier)))) body: (compound_statement (expression_statement (assignment_expression left: (identifier) right: (identifier))) (comment))) (function_definition type: (primitive_type) declarator: (function_declarator declarator: (field_identifier) parameters: (parameter_list (parameter_declaration type: (type_identifier) declarator: (pointer_declarator declarator: (identifier))) (parameter_declaration type: (primitive_type) declarator: (identifier)))) body: (compound_statement (expression_statement (assignment_expression left: (field_expression argument: (identifier) field: (field_identifier)) right: (identifier))) (comment)))))) (function_definition type: (primitive_type) declarator: (function_declarator declarator: (field_identifier) parameters: (parameter_list)) body: (compound_statement (expression_statement (call_expression function: (field_expression argument: (identifier) field: (field_identifier)) arguments: (argument_list))))))))
