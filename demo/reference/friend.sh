translation_unit:  [>>  b'/*\xe5\x8f\x8b\xe5\x85\x83\xe5\x87\xbd\xe6\x95\xb0\xe5\x8f\xaf\xe4\xbb\xa5\xe6\x98\xaf\xe4\xb8\x8d\xe5\xb1\x9e\xe4\xba\x8e\xe4\xbb\xbb\xe4\xbd\x95\xe7\xb1\xbb\xe7\x9a\x84\xe9\x9d\x9e\xe6\x88\x90\xe5\x91\x98\xe5\x87\xbd\xe6\x95\xb0\xef\xbc\x8c\xe4\xb9\x9f\xe5\x8f\xaf\xe4\xbb\xa5\xe6\x98\xaf\xe5\x85\xb6\xe4\xbb\x96\xe7\xb1\xbb\xe7\x9a\x84\xe6\x88\x90\xe5\x91\x98\xe5\x87\xbd\xe6\x95\xb0\xe3\x80\x82\n\xe5\x8f\x8b\xe5\x85\x83\xe5\x87\xbd\xe6\x95\xb0\xe5\x8f\xaf\xe4\xbb\xa5\xe8\xae\xbf\xe9\x97\xae\xe5\xbd\x93\xe5\x89\x8d\xe7\xb1\xbb\xe4\xb8\xad\xe7\x9a\x84\xe6\x89\x80\xe6\x9c\x89\xe6\x88\x90\xe5\x91\x98\xef\xbc\x8c\xe5\x8c\x85\xe6\x8b\xac public\xe3\x80\x81protected\xe3\x80\x81private \xe5\xb1\x9e\xe6\x80\xa7\xe7\x9a\x84\xe3\x80\x82\n*/\n#include <iostream>\nclass Address;\nclass Student\n{\nprivate:\n    int secretmark;\n\npublic:\n    Student(int mark) : secretmark(mark) {}\n    friend void revealSecret(Student &obj);\n    void showaddr(Address *addr);\n};\nclass Address\n{\nprivate:\n    std::string m_city; // \xe5\x9f\x8e\xe5\xb8\x82\npublic:\n    Address(std::string loc) : m_city(loc) {}\n    friend void Student::showaddr(Address *addr); // \xe5\xb0\x86Student\xe7\xb1\xbb\xe4\xb8\xad\xe7\x9a\x84\xe6\x88\x90\xe5\x91\x98\xe5\x87\xbd\xe6\x95\xb0show()\xe5\xa3\xb0\xe6\x98\x8e\xe4\xb8\xba\xe5\x8f\x8b\xe5\x85\x83\xe5\x87\xbd\xe6\x95\xb0\n};\nvoid revealSecret(Student &obj)\n{\n    // \xe7\x94\xb1\xe4\xba\x8e\xe6\x98\xaf\xe5\x8f\x8b\xe5\x85\x83\xe5\x87\xbd\xe6\x95\xb0\xef\xbc\x8c\xe5\x8f\xaf\xe4\xbb\xa5\xe8\xae\xbf\xe9\x97\xae Student \xe7\x9a\x84\xe7\xa7\x81\xe6\x9c\x89\xe6\x88\x90\xe5\x91\x98\n    int val = obj.secretmark;\n}\nvoid Student::showaddr(Address *addr)\n{\n    std::string loc = addr->m_city;\n}\nint main()\n{\n    Student stu(95);\n    Address addr("\xe8\xa5\xbf\xe5\xae\x89");\n    revealSecret(stu);\n    stu.showaddr(&addr);\n    return 0;\n}'  <<]
  comment:  [>>  b'/*\xe5\x8f\x8b\xe5\x85\x83\xe5\x87\xbd\xe6\x95\xb0\xe5\x8f\xaf\xe4\xbb\xa5\xe6\x98\xaf\xe4\xb8\x8d\xe5\xb1\x9e\xe4\xba\x8e\xe4\xbb\xbb\xe4\xbd\x95\xe7\xb1\xbb\xe7\x9a\x84\xe9\x9d\x9e\xe6\x88\x90\xe5\x91\x98\xe5\x87\xbd\xe6\x95\xb0\xef\xbc\x8c\xe4\xb9\x9f\xe5\x8f\xaf\xe4\xbb\xa5\xe6\x98\xaf\xe5\x85\xb6\xe4\xbb\x96\xe7\xb1\xbb\xe7\x9a\x84\xe6\x88\x90\xe5\x91\x98\xe5\x87\xbd\xe6\x95\xb0\xe3\x80\x82\n\xe5\x8f\x8b\xe5\x85\x83\xe5\x87\xbd\xe6\x95\xb0\xe5\x8f\xaf\xe4\xbb\xa5\xe8\xae\xbf\xe9\x97\xae\xe5\xbd\x93\xe5\x89\x8d\xe7\xb1\xbb\xe4\xb8\xad\xe7\x9a\x84\xe6\x89\x80\xe6\x9c\x89\xe6\x88\x90\xe5\x91\x98\xef\xbc\x8c\xe5\x8c\x85\xe6\x8b\xac public\xe3\x80\x81protected\xe3\x80\x81private \xe5\xb1\x9e\xe6\x80\xa7\xe7\x9a\x84\xe3\x80\x82\n*/'  <<]
  preproc_include:  [>>  b'#include <iostream>\n'  <<]
    #include
    system_lib_string:  [>>  b'<iostream>'  <<]
  class_specifier:  [>>  b'class Address'  <<]
    class
    type_identifier:  [>>  b'Address'  <<]
  ;
  class_specifier:  [>>  b'class Student\n{\nprivate:\n    int secretmark;\n\npublic:\n    Student(int mark) : secretmark(mark) {}\n    friend void revealSecret(Student &obj);\n    void showaddr(Address *addr);\n}'  <<]
    class
    type_identifier:  [>>  b'Student'  <<]
    field_declaration_list:  [>>  b'{\nprivate:\n    int secretmark;\n\npublic:\n    Student(int mark) : secretmark(mark) {}\n    friend void revealSecret(Student &obj);\n    void showaddr(Address *addr);\n}'  <<]
      {
      access_specifier:  [>>  b'private'  <<]
        private
      :
      field_declaration:  [>>  b'int secretmark;'  <<]
        primitive_type:  [>>  b'int'  <<]
        field_identifier:  [>>  b'secretmark'  <<]
        ;
      access_specifier:  [>>  b'public'  <<]
        public
      :
      function_definition:  [>>  b'Student(int mark) : secretmark(mark) {}'  <<]
        function_declarator:  [>>  b'Student(int mark)'  <<]
          identifier:  [>>  b'Student'  <<]
          parameter_list:  [>>  b'(int mark)'  <<]
            (
            parameter_declaration:  [>>  b'int mark'  <<]
              primitive_type:  [>>  b'int'  <<]
              identifier:  [>>  b'mark'  <<]
            )
        field_initializer_list:  [>>  b': secretmark(mark)'  <<]
          :
          field_initializer:  [>>  b'secretmark(mark)'  <<]
            field_identifier:  [>>  b'secretmark'  <<]
            argument_list:  [>>  b'(mark)'  <<]
              (
              identifier:  [>>  b'mark'  <<]
              )
        compound_statement:  [>>  b'{}'  <<]
          {
          }
      friend_declaration:  [>>  b'friend void revealSecret(Student &obj);'  <<]
        friend
        declaration:  [>>  b'void revealSecret(Student &obj);'  <<]
          primitive_type:  [>>  b'void'  <<]
          function_declarator:  [>>  b'revealSecret(Student &obj)'  <<]
            identifier:  [>>  b'revealSecret'  <<]
            parameter_list:  [>>  b'(Student &obj)'  <<]
              (
              parameter_declaration:  [>>  b'Student &obj'  <<]
                type_identifier:  [>>  b'Student'  <<]
                reference_declarator:  [>>  b'&obj'  <<]
                  &
                  identifier:  [>>  b'obj'  <<]
              )
          ;
      field_declaration:  [>>  b'void showaddr(Address *addr);'  <<]
        primitive_type:  [>>  b'void'  <<]
        function_declarator:  [>>  b'showaddr(Address *addr)'  <<]
          field_identifier:  [>>  b'showaddr'  <<]
          parameter_list:  [>>  b'(Address *addr)'  <<]
            (
            parameter_declaration:  [>>  b'Address *addr'  <<]
              type_identifier:  [>>  b'Address'  <<]
              pointer_declarator:  [>>  b'*addr'  <<]
                *
                identifier:  [>>  b'addr'  <<]
            )
        ;
      }
  ;
  class_specifier:  [>>  b'class Address\n{\nprivate:\n    std::string m_city; // \xe5\x9f\x8e\xe5\xb8\x82\npublic:\n    Address(std::string loc) : m_city(loc) {}\n    friend void Student::showaddr(Address *addr); // \xe5\xb0\x86Student\xe7\xb1\xbb\xe4\xb8\xad\xe7\x9a\x84\xe6\x88\x90\xe5\x91\x98\xe5\x87\xbd\xe6\x95\xb0show()\xe5\xa3\xb0\xe6\x98\x8e\xe4\xb8\xba\xe5\x8f\x8b\xe5\x85\x83\xe5\x87\xbd\xe6\x95\xb0\n}'  <<]
    class
    type_identifier:  [>>  b'Address'  <<]
    field_declaration_list:  [>>  b'{\nprivate:\n    std::string m_city; // \xe5\x9f\x8e\xe5\xb8\x82\npublic:\n    Address(std::string loc) : m_city(loc) {}\n    friend void Student::showaddr(Address *addr); // \xe5\xb0\x86Student\xe7\xb1\xbb\xe4\xb8\xad\xe7\x9a\x84\xe6\x88\x90\xe5\x91\x98\xe5\x87\xbd\xe6\x95\xb0show()\xe5\xa3\xb0\xe6\x98\x8e\xe4\xb8\xba\xe5\x8f\x8b\xe5\x85\x83\xe5\x87\xbd\xe6\x95\xb0\n}'  <<]
      {
      access_specifier:  [>>  b'private'  <<]
        private
      :
      field_declaration:  [>>  b'std::string m_city;'  <<]
        qualified_identifier:  [>>  b'std::string'  <<]
          namespace_identifier:  [>>  b'std'  <<]
          ::
          type_identifier:  [>>  b'string'  <<]
        field_identifier:  [>>  b'm_city'  <<]
        ;
      comment:  [>>  b'// \xe5\x9f\x8e\xe5\xb8\x82'  <<]
      access_specifier:  [>>  b'public'  <<]
        public
      :
      function_definition:  [>>  b'Address(std::string loc) : m_city(loc) {}'  <<]
        function_declarator:  [>>  b'Address(std::string loc)'  <<]
          identifier:  [>>  b'Address'  <<]
          parameter_list:  [>>  b'(std::string loc)'  <<]
            (
            parameter_declaration:  [>>  b'std::string loc'  <<]
              qualified_identifier:  [>>  b'std::string'  <<]
                namespace_identifier:  [>>  b'std'  <<]
                ::
                type_identifier:  [>>  b'string'  <<]
              identifier:  [>>  b'loc'  <<]
            )
        field_initializer_list:  [>>  b': m_city(loc)'  <<]
          :
          field_initializer:  [>>  b'm_city(loc)'  <<]
            field_identifier:  [>>  b'm_city'  <<]
            argument_list:  [>>  b'(loc)'  <<]
              (
              identifier:  [>>  b'loc'  <<]
              )
        compound_statement:  [>>  b'{}'  <<]
          {
          }
      friend_declaration:  [>>  b'friend void Student::showaddr(Address *addr);'  <<]
        friend
        declaration:  [>>  b'void Student::showaddr(Address *addr);'  <<]
          primitive_type:  [>>  b'void'  <<]
          function_declarator:  [>>  b'Student::showaddr(Address *addr)'  <<]
            qualified_identifier:  [>>  b'Student::showaddr'  <<]
              namespace_identifier:  [>>  b'Student'  <<]
              ::
              identifier:  [>>  b'showaddr'  <<]
            parameter_list:  [>>  b'(Address *addr)'  <<]
              (
              parameter_declaration:  [>>  b'Address *addr'  <<]
                type_identifier:  [>>  b'Address'  <<]
                pointer_declarator:  [>>  b'*addr'  <<]
                  *
                  identifier:  [>>  b'addr'  <<]
              )
          ;
      comment:  [>>  b'// \xe5\xb0\x86Student\xe7\xb1\xbb\xe4\xb8\xad\xe7\x9a\x84\xe6\x88\x90\xe5\x91\x98\xe5\x87\xbd\xe6\x95\xb0show()\xe5\xa3\xb0\xe6\x98\x8e\xe4\xb8\xba\xe5\x8f\x8b\xe5\x85\x83\xe5\x87\xbd\xe6\x95\xb0'  <<]
      }
  ;
  function_definition:  [>>  b'void revealSecret(Student &obj)\n{\n    // \xe7\x94\xb1\xe4\xba\x8e\xe6\x98\xaf\xe5\x8f\x8b\xe5\x85\x83\xe5\x87\xbd\xe6\x95\xb0\xef\xbc\x8c\xe5\x8f\xaf\xe4\xbb\xa5\xe8\xae\xbf\xe9\x97\xae Student \xe7\x9a\x84\xe7\xa7\x81\xe6\x9c\x89\xe6\x88\x90\xe5\x91\x98\n    int val = obj.secretmark;\n}'  <<]
    primitive_type:  [>>  b'void'  <<]
    function_declarator:  [>>  b'revealSecret(Student &obj)'  <<]
      identifier:  [>>  b'revealSecret'  <<]
      parameter_list:  [>>  b'(Student &obj)'  <<]
        (
        parameter_declaration:  [>>  b'Student &obj'  <<]
          type_identifier:  [>>  b'Student'  <<]
          reference_declarator:  [>>  b'&obj'  <<]
            &
            identifier:  [>>  b'obj'  <<]
        )
    compound_statement:  [>>  b'{\n    // \xe7\x94\xb1\xe4\xba\x8e\xe6\x98\xaf\xe5\x8f\x8b\xe5\x85\x83\xe5\x87\xbd\xe6\x95\xb0\xef\xbc\x8c\xe5\x8f\xaf\xe4\xbb\xa5\xe8\xae\xbf\xe9\x97\xae Student \xe7\x9a\x84\xe7\xa7\x81\xe6\x9c\x89\xe6\x88\x90\xe5\x91\x98\n    int val = obj.secretmark;\n}'  <<]
      {
      comment:  [>>  b'// \xe7\x94\xb1\xe4\xba\x8e\xe6\x98\xaf\xe5\x8f\x8b\xe5\x85\x83\xe5\x87\xbd\xe6\x95\xb0\xef\xbc\x8c\xe5\x8f\xaf\xe4\xbb\xa5\xe8\xae\xbf\xe9\x97\xae Student \xe7\x9a\x84\xe7\xa7\x81\xe6\x9c\x89\xe6\x88\x90\xe5\x91\x98'  <<]
      declaration:  [>>  b'int val = obj.secretmark;'  <<]
        primitive_type:  [>>  b'int'  <<]
        init_declarator:  [>>  b'val = obj.secretmark'  <<]
          identifier:  [>>  b'val'  <<]
          =
          field_expression:  [>>  b'obj.secretmark'  <<]
            identifier:  [>>  b'obj'  <<]
            .
            field_identifier:  [>>  b'secretmark'  <<]
        ;
      }
  function_definition:  [>>  b'void Student::showaddr(Address *addr)\n{\n    std::string loc = addr->m_city;\n}'  <<]
    primitive_type:  [>>  b'void'  <<]
    function_declarator:  [>>  b'Student::showaddr(Address *addr)'  <<]
      qualified_identifier:  [>>  b'Student::showaddr'  <<]
        namespace_identifier:  [>>  b'Student'  <<]
        ::
        identifier:  [>>  b'showaddr'  <<]
      parameter_list:  [>>  b'(Address *addr)'  <<]
        (
        parameter_declaration:  [>>  b'Address *addr'  <<]
          type_identifier:  [>>  b'Address'  <<]
          pointer_declarator:  [>>  b'*addr'  <<]
            *
            identifier:  [>>  b'addr'  <<]
        )
    compound_statement:  [>>  b'{\n    std::string loc = addr->m_city;\n}'  <<]
      {
      declaration:  [>>  b'std::string loc = addr->m_city;'  <<]
        qualified_identifier:  [>>  b'std::string'  <<]
          namespace_identifier:  [>>  b'std'  <<]
          ::
          type_identifier:  [>>  b'string'  <<]
        init_declarator:  [>>  b'loc = addr->m_city'  <<]
          identifier:  [>>  b'loc'  <<]
          =
          field_expression:  [>>  b'addr->m_city'  <<]
            identifier:  [>>  b'addr'  <<]
            ->
            field_identifier:  [>>  b'm_city'  <<]
        ;
      }
  function_definition:  [>>  b'int main()\n{\n    Student stu(95);\n    Address addr("\xe8\xa5\xbf\xe5\xae\x89");\n    revealSecret(stu);\n    stu.showaddr(&addr);\n    return 0;\n}'  <<]
    primitive_type:  [>>  b'int'  <<]
    function_declarator:  [>>  b'main()'  <<]
      identifier:  [>>  b'main'  <<]
      parameter_list:  [>>  b'()'  <<]
        (
        )
    compound_statement:  [>>  b'{\n    Student stu(95);\n    Address addr("\xe8\xa5\xbf\xe5\xae\x89");\n    revealSecret(stu);\n    stu.showaddr(&addr);\n    return 0;\n}'  <<]
      {
      declaration:  [>>  b'Student stu(95);'  <<]
        type_identifier:  [>>  b'Student'  <<]
        init_declarator:  [>>  b'stu(95)'  <<]
          identifier:  [>>  b'stu'  <<]
          argument_list:  [>>  b'(95)'  <<]
            (
            number_literal:  [>>  b'95'  <<]
            )
        ;
      declaration:  [>>  b'Address addr("\xe8\xa5\xbf\xe5\xae\x89");'  <<]
        type_identifier:  [>>  b'Address'  <<]
        init_declarator:  [>>  b'addr("\xe8\xa5\xbf\xe5\xae\x89")'  <<]
          identifier:  [>>  b'addr'  <<]
          argument_list:  [>>  b'("\xe8\xa5\xbf\xe5\xae\x89")'  <<]
            (
            string_literal:  [>>  b'"\xe8\xa5\xbf\xe5\xae\x89"'  <<]
              "
              string_content:  [>>  b'\xe8\xa5\xbf\xe5\xae\x89'  <<]
              "
            )
        ;
      expression_statement:  [>>  b'revealSecret(stu);'  <<]
        call_expression:  [>>  b'revealSecret(stu)'  <<]
          identifier:  [>>  b'revealSecret'  <<]
          argument_list:  [>>  b'(stu)'  <<]
            (
            identifier:  [>>  b'stu'  <<]
            )
        ;
      expression_statement:  [>>  b'stu.showaddr(&addr);'  <<]
        call_expression:  [>>  b'stu.showaddr(&addr)'  <<]
          field_expression:  [>>  b'stu.showaddr'  <<]
            identifier:  [>>  b'stu'  <<]
            .
            field_identifier:  [>>  b'showaddr'  <<]
          argument_list:  [>>  b'(&addr)'  <<]
            (
            pointer_expression:  [>>  b'&addr'  <<]
              &
              identifier:  [>>  b'addr'  <<]
            )
        ;
      return_statement:  [>>  b'return 0;'  <<]
        return
        number_literal:  [>>  b'0'  <<]
        ;
      }
(translation_unit (comment) (preproc_include path: (system_lib_string)) (class_specifier name: (type_identifier)) (class_specifier name: (type_identifier) body: (field_declaration_list (access_specifier) (field_declaration type: (primitive_type) declarator: (field_identifier)) (access_specifier) (function_definition declarator: (function_declarator declarator: (identifier) parameters: (parameter_list (parameter_declaration type: (primitive_type) declarator: (identifier)))) (field_initializer_list (field_initializer (field_identifier) (argument_list (identifier)))) body: (compound_statement)) (friend_declaration (declaration type: (primitive_type) declarator: (function_declarator declarator: (identifier) parameters: (parameter_list (parameter_declaration type: (type_identifier) declarator: (reference_declarator (identifier))))))) (field_declaration type: (primitive_type) declarator: (function_declarator declarator: (field_identifier) parameters: (parameter_list (parameter_declaration type: (type_identifier) declarator: (pointer_declarator declarator: (identifier)))))))) (class_specifier name: (type_identifier) body: (field_declaration_list (access_specifier) (field_declaration type: (qualified_identifier scope: (namespace_identifier) name: (type_identifier)) declarator: (field_identifier)) (comment) (access_specifier) (function_definition declarator: (function_declarator declarator: (identifier) parameters: (parameter_list (parameter_declaration type: (qualified_identifier scope: (namespace_identifier) name: (type_identifier)) declarator: (identifier)))) (field_initializer_list (field_initializer (field_identifier) (argument_list (identifier)))) body: (compound_statement)) (friend_declaration (declaration type: (primitive_type) declarator: (function_declarator declarator: (qualified_identifier scope: (namespace_identifier) name: (identifier)) parameters: (parameter_list (parameter_declaration type: (type_identifier) declarator: (pointer_declarator declarator: (identifier))))))) (comment))) (function_definition type: (primitive_type) declarator: (function_declarator declarator: (identifier) parameters: (parameter_list (parameter_declaration type: (type_identifier) declarator: (reference_declarator (identifier))))) body: (compound_statement (comment) (declaration type: (primitive_type) declarator: (init_declarator declarator: (identifier) value: (field_expression argument: (identifier) field: (field_identifier)))))) (function_definition type: (primitive_type) declarator: (function_declarator declarator: (qualified_identifier scope: (namespace_identifier) name: (identifier)) parameters: (parameter_list (parameter_declaration type: (type_identifier) declarator: (pointer_declarator declarator: (identifier))))) body: (compound_statement (declaration type: (qualified_identifier scope: (namespace_identifier) name: (type_identifier)) declarator: (init_declarator declarator: (identifier) value: (field_expression argument: (identifier) field: (field_identifier)))))) (function_definition type: (primitive_type) declarator: (function_declarator declarator: (identifier) parameters: (parameter_list)) body: (compound_statement (declaration type: (type_identifier) declarator: (init_declarator declarator: (identifier) value: (argument_list (number_literal)))) (declaration type: (type_identifier) declarator: (init_declarator declarator: (identifier) value: (argument_list (string_literal (string_content))))) (expression_statement (call_expression function: (identifier) arguments: (argument_list (identifier)))) (expression_statement (call_expression function: (field_expression argument: (identifier) field: (field_identifier)) arguments: (argument_list (pointer_expression argument: (identifier))))) (return_statement (number_literal)))))
