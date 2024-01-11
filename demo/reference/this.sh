translation_unit:  [>>  b'class MyClass\n{\nprivate:\n    int value;\n\npublic:\n    MyClass(int value)\n    {\n        this->value = value; // \xe4\xbd\xbf\xe7\x94\xa8 this \xe5\x85\xb3\xe9\x94\xae\xe5\xad\x97\xe6\x9d\xa5\xe5\x8c\xba\xe5\x88\x86\xe6\x88\x90\xe5\x91\x98\xe5\x8f\x98\xe9\x87\x8f\xe5\x92\x8c\xe5\x8f\x82\xe6\x95\xb0\n    }\n    MyClass(const MyClass& other) {  // \xe4\xbd\xbf\xe7\x94\xa8 this \xe5\x85\xb3\xe9\x94\xae\xe5\xad\x97\xe6\x9d\xa5\xe6\x8b\xb7\xe8\xb4\x9d\xe5\x88\x9d\xe5\xa7\x8b\xe5\x8c\x96\n        this->value = other.value;\n    }\n};\n// \xe9\x93\xbe\xe5\xbc\x8f\xe8\xb0\x83\xe7\x94\xa8\xef\xbc\x8c\xe4\xbd\xbf\xe4\xbb\xa3\xe7\xa0\x81\xe7\xb4\xa7\xe5\x87\x91\xef\xbc\x8c\xe4\xbd\xbf\xe5\xbe\x97\xe5\xa4\x9a\xe4\xb8\xaa\xe6\x88\x90\xe5\x91\x98\xe5\x87\xbd\xe6\x95\xb0\xe8\xb0\x83\xe7\x94\xa8\xe5\x8f\xaf\xe4\xbb\xa5\xe5\x9c\xa8\xe5\x90\x8c\xe4\xb8\x80\xe8\xa1\x8c\xe5\x86\x85\xe8\xbf\x9e\xe7\xbb\xad\xe8\xbf\x9b\xe8\xa1\x8c\xe3\x80\x82\nclass Calculator\n{\npublic:\n    Calculator() : result(0) {}\n    Calculator &add(int value)\n    {\n        result += value;\n        return *this;\n    }\n    Calculator &subtract(int value)\n    {\n        result -= value;\n        return *this;\n    }\n\nprivate:\n    int result;\n};\nint main()\n{\n    Calculator cal;\n    cal.add(5).subtract(3).add(10);\n}\n'  <<]
  class_specifier:  [>>  b'class MyClass\n{\nprivate:\n    int value;\n\npublic:\n    MyClass(int value)\n    {\n        this->value = value; // \xe4\xbd\xbf\xe7\x94\xa8 this \xe5\x85\xb3\xe9\x94\xae\xe5\xad\x97\xe6\x9d\xa5\xe5\x8c\xba\xe5\x88\x86\xe6\x88\x90\xe5\x91\x98\xe5\x8f\x98\xe9\x87\x8f\xe5\x92\x8c\xe5\x8f\x82\xe6\x95\xb0\n    }\n    MyClass(const MyClass& other) {  // \xe4\xbd\xbf\xe7\x94\xa8 this \xe5\x85\xb3\xe9\x94\xae\xe5\xad\x97\xe6\x9d\xa5\xe6\x8b\xb7\xe8\xb4\x9d\xe5\x88\x9d\xe5\xa7\x8b\xe5\x8c\x96\n        this->value = other.value;\n    }\n}'  <<]
    class
    type_identifier:  [>>  b'MyClass'  <<]
    field_declaration_list:  [>>  b'{\nprivate:\n    int value;\n\npublic:\n    MyClass(int value)\n    {\n        this->value = value; // \xe4\xbd\xbf\xe7\x94\xa8 this \xe5\x85\xb3\xe9\x94\xae\xe5\xad\x97\xe6\x9d\xa5\xe5\x8c\xba\xe5\x88\x86\xe6\x88\x90\xe5\x91\x98\xe5\x8f\x98\xe9\x87\x8f\xe5\x92\x8c\xe5\x8f\x82\xe6\x95\xb0\n    }\n    MyClass(const MyClass& other) {  // \xe4\xbd\xbf\xe7\x94\xa8 this \xe5\x85\xb3\xe9\x94\xae\xe5\xad\x97\xe6\x9d\xa5\xe6\x8b\xb7\xe8\xb4\x9d\xe5\x88\x9d\xe5\xa7\x8b\xe5\x8c\x96\n        this->value = other.value;\n    }\n}'  <<]
      {
      access_specifier:  [>>  b'private'  <<]
        private
      :
      field_declaration:  [>>  b'int value;'  <<]
        primitive_type:  [>>  b'int'  <<]
        field_identifier:  [>>  b'value'  <<]
        ;
      access_specifier:  [>>  b'public'  <<]
        public
      :
      function_definition:  [>>  b'MyClass(int value)\n    {\n        this->value = value; // \xe4\xbd\xbf\xe7\x94\xa8 this \xe5\x85\xb3\xe9\x94\xae\xe5\xad\x97\xe6\x9d\xa5\xe5\x8c\xba\xe5\x88\x86\xe6\x88\x90\xe5\x91\x98\xe5\x8f\x98\xe9\x87\x8f\xe5\x92\x8c\xe5\x8f\x82\xe6\x95\xb0\n    }'  <<]
        function_declarator:  [>>  b'MyClass(int value)'  <<]
          identifier:  [>>  b'MyClass'  <<]
          parameter_list:  [>>  b'(int value)'  <<]
            (
            parameter_declaration:  [>>  b'int value'  <<]
              primitive_type:  [>>  b'int'  <<]
              identifier:  [>>  b'value'  <<]
            )
        compound_statement:  [>>  b'{\n        this->value = value; // \xe4\xbd\xbf\xe7\x94\xa8 this \xe5\x85\xb3\xe9\x94\xae\xe5\xad\x97\xe6\x9d\xa5\xe5\x8c\xba\xe5\x88\x86\xe6\x88\x90\xe5\x91\x98\xe5\x8f\x98\xe9\x87\x8f\xe5\x92\x8c\xe5\x8f\x82\xe6\x95\xb0\n    }'  <<]
          {
          expression_statement:  [>>  b'this->value = value;'  <<]
            assignment_expression:  [>>  b'this->value = value'  <<]
              field_expression:  [>>  b'this->value'  <<]
                this:  [>>  b'this'  <<]
                ->
                field_identifier:  [>>  b'value'  <<]
              =
              identifier:  [>>  b'value'  <<]
            ;
          comment:  [>>  b'// \xe4\xbd\xbf\xe7\x94\xa8 this \xe5\x85\xb3\xe9\x94\xae\xe5\xad\x97\xe6\x9d\xa5\xe5\x8c\xba\xe5\x88\x86\xe6\x88\x90\xe5\x91\x98\xe5\x8f\x98\xe9\x87\x8f\xe5\x92\x8c\xe5\x8f\x82\xe6\x95\xb0'  <<]
          }
      function_definition:  [>>  b'MyClass(const MyClass& other) {  // \xe4\xbd\xbf\xe7\x94\xa8 this \xe5\x85\xb3\xe9\x94\xae\xe5\xad\x97\xe6\x9d\xa5\xe6\x8b\xb7\xe8\xb4\x9d\xe5\x88\x9d\xe5\xa7\x8b\xe5\x8c\x96\n        this->value = other.value;\n    }'  <<]
        function_declarator:  [>>  b'MyClass(const MyClass& other)'  <<]
          identifier:  [>>  b'MyClass'  <<]
          parameter_list:  [>>  b'(const MyClass& other)'  <<]
            (
            parameter_declaration:  [>>  b'const MyClass& other'  <<]
              type_qualifier:  [>>  b'const'  <<]
                const
              type_identifier:  [>>  b'MyClass'  <<]
              reference_declarator:  [>>  b'& other'  <<]
                &
                identifier:  [>>  b'other'  <<]
            )
        compound_statement:  [>>  b'{  // \xe4\xbd\xbf\xe7\x94\xa8 this \xe5\x85\xb3\xe9\x94\xae\xe5\xad\x97\xe6\x9d\xa5\xe6\x8b\xb7\xe8\xb4\x9d\xe5\x88\x9d\xe5\xa7\x8b\xe5\x8c\x96\n        this->value = other.value;\n    }'  <<]
          {
          comment:  [>>  b'// \xe4\xbd\xbf\xe7\x94\xa8 this \xe5\x85\xb3\xe9\x94\xae\xe5\xad\x97\xe6\x9d\xa5\xe6\x8b\xb7\xe8\xb4\x9d\xe5\x88\x9d\xe5\xa7\x8b\xe5\x8c\x96'  <<]
          expression_statement:  [>>  b'this->value = other.value;'  <<]
            assignment_expression:  [>>  b'this->value = other.value'  <<]
              field_expression:  [>>  b'this->value'  <<]
                this:  [>>  b'this'  <<]
                ->
                field_identifier:  [>>  b'value'  <<]
              =
              field_expression:  [>>  b'other.value'  <<]
                identifier:  [>>  b'other'  <<]
                .
                field_identifier:  [>>  b'value'  <<]
            ;
          }
      }
  ;
  comment:  [>>  b'// \xe9\x93\xbe\xe5\xbc\x8f\xe8\xb0\x83\xe7\x94\xa8\xef\xbc\x8c\xe4\xbd\xbf\xe4\xbb\xa3\xe7\xa0\x81\xe7\xb4\xa7\xe5\x87\x91\xef\xbc\x8c\xe4\xbd\xbf\xe5\xbe\x97\xe5\xa4\x9a\xe4\xb8\xaa\xe6\x88\x90\xe5\x91\x98\xe5\x87\xbd\xe6\x95\xb0\xe8\xb0\x83\xe7\x94\xa8\xe5\x8f\xaf\xe4\xbb\xa5\xe5\x9c\xa8\xe5\x90\x8c\xe4\xb8\x80\xe8\xa1\x8c\xe5\x86\x85\xe8\xbf\x9e\xe7\xbb\xad\xe8\xbf\x9b\xe8\xa1\x8c\xe3\x80\x82'  <<]
  class_specifier:  [>>  b'class Calculator\n{\npublic:\n    Calculator() : result(0) {}\n    Calculator &add(int value)\n    {\n        result += value;\n        return *this;\n    }\n    Calculator &subtract(int value)\n    {\n        result -= value;\n        return *this;\n    }\n\nprivate:\n    int result;\n}'  <<]
    class
    type_identifier:  [>>  b'Calculator'  <<]
    field_declaration_list:  [>>  b'{\npublic:\n    Calculator() : result(0) {}\n    Calculator &add(int value)\n    {\n        result += value;\n        return *this;\n    }\n    Calculator &subtract(int value)\n    {\n        result -= value;\n        return *this;\n    }\n\nprivate:\n    int result;\n}'  <<]
      {
      access_specifier:  [>>  b'public'  <<]
        public
      :
      function_definition:  [>>  b'Calculator() : result(0) {}'  <<]
        function_declarator:  [>>  b'Calculator()'  <<]
          identifier:  [>>  b'Calculator'  <<]
          parameter_list:  [>>  b'()'  <<]
            (
            )
        field_initializer_list:  [>>  b': result(0)'  <<]
          :
          field_initializer:  [>>  b'result(0)'  <<]
            field_identifier:  [>>  b'result'  <<]
            argument_list:  [>>  b'(0)'  <<]
              (
              number_literal:  [>>  b'0'  <<]
              )
        compound_statement:  [>>  b'{}'  <<]
          {
          }
      function_definition:  [>>  b'Calculator &add(int value)\n    {\n        result += value;\n        return *this;\n    }'  <<]
        type_identifier:  [>>  b'Calculator'  <<]
        reference_declarator:  [>>  b'&add(int value)'  <<]
          &
          function_declarator:  [>>  b'add(int value)'  <<]
            field_identifier:  [>>  b'add'  <<]
            parameter_list:  [>>  b'(int value)'  <<]
              (
              parameter_declaration:  [>>  b'int value'  <<]
                primitive_type:  [>>  b'int'  <<]
                identifier:  [>>  b'value'  <<]
              )
        compound_statement:  [>>  b'{\n        result += value;\n        return *this;\n    }'  <<]
          {
          expression_statement:  [>>  b'result += value;'  <<]
            assignment_expression:  [>>  b'result += value'  <<]
              identifier:  [>>  b'result'  <<]
              +=
              identifier:  [>>  b'value'  <<]
            ;
          return_statement:  [>>  b'return *this;'  <<]
            return
            pointer_expression:  [>>  b'*this'  <<]
              *
              this:  [>>  b'this'  <<]
            ;
          }
      function_definition:  [>>  b'Calculator &subtract(int value)\n    {\n        result -= value;\n        return *this;\n    }'  <<]
        type_identifier:  [>>  b'Calculator'  <<]
        reference_declarator:  [>>  b'&subtract(int value)'  <<]
          &
          function_declarator:  [>>  b'subtract(int value)'  <<]
            field_identifier:  [>>  b'subtract'  <<]
            parameter_list:  [>>  b'(int value)'  <<]
              (
              parameter_declaration:  [>>  b'int value'  <<]
                primitive_type:  [>>  b'int'  <<]
                identifier:  [>>  b'value'  <<]
              )
        compound_statement:  [>>  b'{\n        result -= value;\n        return *this;\n    }'  <<]
          {
          expression_statement:  [>>  b'result -= value;'  <<]
            assignment_expression:  [>>  b'result -= value'  <<]
              identifier:  [>>  b'result'  <<]
              -=
              identifier:  [>>  b'value'  <<]
            ;
          return_statement:  [>>  b'return *this;'  <<]
            return
            pointer_expression:  [>>  b'*this'  <<]
              *
              this:  [>>  b'this'  <<]
            ;
          }
      access_specifier:  [>>  b'private'  <<]
        private
      :
      field_declaration:  [>>  b'int result;'  <<]
        primitive_type:  [>>  b'int'  <<]
        field_identifier:  [>>  b'result'  <<]
        ;
      }
  ;
  function_definition:  [>>  b'int main()\n{\n    Calculator cal;\n    cal.add(5).subtract(3).add(10);\n}'  <<]
    primitive_type:  [>>  b'int'  <<]
    function_declarator:  [>>  b'main()'  <<]
      identifier:  [>>  b'main'  <<]
      parameter_list:  [>>  b'()'  <<]
        (
        )
    compound_statement:  [>>  b'{\n    Calculator cal;\n    cal.add(5).subtract(3).add(10);\n}'  <<]
      {
      declaration:  [>>  b'Calculator cal;'  <<]
        type_identifier:  [>>  b'Calculator'  <<]
        identifier:  [>>  b'cal'  <<]
        ;
      expression_statement:  [>>  b'cal.add(5).subtract(3).add(10);'  <<]
        call_expression:  [>>  b'cal.add(5).subtract(3).add(10)'  <<]
          field_expression:  [>>  b'cal.add(5).subtract(3).add'  <<]
            call_expression:  [>>  b'cal.add(5).subtract(3)'  <<]
              field_expression:  [>>  b'cal.add(5).subtract'  <<]
                call_expression:  [>>  b'cal.add(5)'  <<]
                  field_expression:  [>>  b'cal.add'  <<]
                    identifier:  [>>  b'cal'  <<]
                    .
                    field_identifier:  [>>  b'add'  <<]
                  argument_list:  [>>  b'(5)'  <<]
                    (
                    number_literal:  [>>  b'5'  <<]
                    )
                .
                field_identifier:  [>>  b'subtract'  <<]
              argument_list:  [>>  b'(3)'  <<]
                (
                number_literal:  [>>  b'3'  <<]
                )
            .
            field_identifier:  [>>  b'add'  <<]
          argument_list:  [>>  b'(10)'  <<]
            (
            number_literal:  [>>  b'10'  <<]
            )
        ;
      }
(translation_unit (class_specifier name: (type_identifier) body: (field_declaration_list (access_specifier) (field_declaration type: (primitive_type) declarator: (field_identifier)) (access_specifier) (function_definition declarator: (function_declarator declarator: (identifier) parameters: (parameter_list (parameter_declaration type: (primitive_type) declarator: (identifier)))) body: (compound_statement (expression_statement (assignment_expression left: (field_expression argument: (this) field: (field_identifier)) right: (identifier))) (comment))) (function_definition declarator: (function_declarator declarator: (identifier) parameters: (parameter_list (parameter_declaration (type_qualifier) type: (type_identifier) declarator: (reference_declarator (identifier))))) body: (compound_statement (comment) (expression_statement (assignment_expression left: (field_expression argument: (this) field: (field_identifier)) right: (field_expression argument: (identifier) field: (field_identifier)))))))) (comment) (class_specifier name: (type_identifier) body: (field_declaration_list (access_specifier) (function_definition declarator: (function_declarator declarator: (identifier) parameters: (parameter_list)) (field_initializer_list (field_initializer (field_identifier) (argument_list (number_literal)))) body: (compound_statement)) (function_definition type: (type_identifier) declarator: (reference_declarator (function_declarator declarator: (field_identifier) parameters: (parameter_list (parameter_declaration type: (primitive_type) declarator: (identifier))))) body: (compound_statement (expression_statement (assignment_expression left: (identifier) right: (identifier))) (return_statement (pointer_expression argument: (this))))) (function_definition type: (type_identifier) declarator: (reference_declarator (function_declarator declarator: (field_identifier) parameters: (parameter_list (parameter_declaration type: (primitive_type) declarator: (identifier))))) body: (compound_statement (expression_statement (assignment_expression left: (identifier) right: (identifier))) (return_statement (pointer_expression argument: (this))))) (access_specifier) (field_declaration type: (primitive_type) declarator: (field_identifier)))) (function_definition type: (primitive_type) declarator: (function_declarator declarator: (identifier) parameters: (parameter_list)) body: (compound_statement (declaration type: (type_identifier) declarator: (identifier)) (expression_statement (call_expression function: (field_expression argument: (call_expression function: (field_expression argument: (call_expression function: (field_expression argument: (identifier) field: (field_identifier)) arguments: (argument_list (number_literal))) field: (field_identifier)) arguments: (argument_list (number_literal))) field: (field_identifier)) arguments: (argument_list (number_literal)))))))
