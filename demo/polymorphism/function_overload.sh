translation_unit:  [>>  b"class Y;\nclass X\n{\npublic:\n    operator char() const { return 'a'; }\n    void foo(int);    // f1\n    void foo(char);   // f2\n    void foo(double); // f3\n    void foo(X);      // f4\n    void foo(Y &);    // f5\n};\nclass Y : public X\n{\n};\nvoid foo(double); // f6\nvoid foo(int);    // f7\nvoid bar(Y &aY)\n{\n    // Candidate_func={f6,f7}, Validate_func={f6,f7} best:\n    // f7<cr promotion:ck std>\n    foo('c');\n    // Candidate_func={f6,f7},Validate_func={f6,f7} best:\n    // f7 <cr user:ck user->ck std>\n    foo(aY);\n    // Candidate_func={f1...f5},Validate_func={f1,f2,f3} best:\n    // f2 <cr std:ck ptr,cr identity:ck identity>\n    aY.foo('a');\n    // Candidate_func={f1...f5},Validate_func={f1...f5} best:\n    // f5 <cr std:ck ptr,cr identity:ck ref bind>\n    aY.foo(aY);\n}"  <<]
  class_specifier:  [>>  b'class Y'  <<]
    class
    type_identifier:  [>>  b'Y'  <<]
  ;
  class_specifier:  [>>  b"class X\n{\npublic:\n    operator char() const { return 'a'; }\n    void foo(int);    // f1\n    void foo(char);   // f2\n    void foo(double); // f3\n    void foo(X);      // f4\n    void foo(Y &);    // f5\n}"  <<]
    class
    type_identifier:  [>>  b'X'  <<]
    field_declaration_list:  [>>  b"{\npublic:\n    operator char() const { return 'a'; }\n    void foo(int);    // f1\n    void foo(char);   // f2\n    void foo(double); // f3\n    void foo(X);      // f4\n    void foo(Y &);    // f5\n}"  <<]
      {
      access_specifier:  [>>  b'public'  <<]
        public
      :
      function_definition:  [>>  b"operator char() const { return 'a'; }"  <<]
        operator_cast:  [>>  b'operator char() const'  <<]
          operator
          primitive_type:  [>>  b'char'  <<]
          abstract_function_declarator:  [>>  b'() const'  <<]
            parameter_list:  [>>  b'()'  <<]
              (
              )
            type_qualifier:  [>>  b'const'  <<]
              const
        compound_statement:  [>>  b"{ return 'a'; }"  <<]
          {
          return_statement:  [>>  b"return 'a';"  <<]
            return
            char_literal:  [>>  b"'a'"  <<]
              '
              character:  [>>  b'a'  <<]
              '
            ;
          }
      field_declaration:  [>>  b'void foo(int);'  <<]
        primitive_type:  [>>  b'void'  <<]
        function_declarator:  [>>  b'foo(int)'  <<]
          field_identifier:  [>>  b'foo'  <<]
          parameter_list:  [>>  b'(int)'  <<]
            (
            parameter_declaration:  [>>  b'int'  <<]
              primitive_type:  [>>  b'int'  <<]
            )
        ;
      comment:  [>>  b'// f1'  <<]
      field_declaration:  [>>  b'void foo(char);'  <<]
        primitive_type:  [>>  b'void'  <<]
        function_declarator:  [>>  b'foo(char)'  <<]
          field_identifier:  [>>  b'foo'  <<]
          parameter_list:  [>>  b'(char)'  <<]
            (
            parameter_declaration:  [>>  b'char'  <<]
              primitive_type:  [>>  b'char'  <<]
            )
        ;
      comment:  [>>  b'// f2'  <<]
      field_declaration:  [>>  b'void foo(double);'  <<]
        primitive_type:  [>>  b'void'  <<]
        function_declarator:  [>>  b'foo(double)'  <<]
          field_identifier:  [>>  b'foo'  <<]
          parameter_list:  [>>  b'(double)'  <<]
            (
            parameter_declaration:  [>>  b'double'  <<]
              primitive_type:  [>>  b'double'  <<]
            )
        ;
      comment:  [>>  b'// f3'  <<]
      field_declaration:  [>>  b'void foo(X);'  <<]
        primitive_type:  [>>  b'void'  <<]
        function_declarator:  [>>  b'foo(X)'  <<]
          field_identifier:  [>>  b'foo'  <<]
          parameter_list:  [>>  b'(X)'  <<]
            (
            parameter_declaration:  [>>  b'X'  <<]
              type_identifier:  [>>  b'X'  <<]
            )
        ;
      comment:  [>>  b'// f4'  <<]
      field_declaration:  [>>  b'void foo(Y &);'  <<]
        primitive_type:  [>>  b'void'  <<]
        function_declarator:  [>>  b'foo(Y &)'  <<]
          field_identifier:  [>>  b'foo'  <<]
          parameter_list:  [>>  b'(Y &)'  <<]
            (
            parameter_declaration:  [>>  b'Y &'  <<]
              type_identifier:  [>>  b'Y'  <<]
              abstract_reference_declarator:  [>>  b'&'  <<]
                &
            )
        ;
      comment:  [>>  b'// f5'  <<]
      }
  ;
  class_specifier:  [>>  b'class Y : public X\n{\n}'  <<]
    class
    type_identifier:  [>>  b'Y'  <<]
    base_class_clause:  [>>  b': public X'  <<]
      :
      access_specifier:  [>>  b'public'  <<]
        public
      type_identifier:  [>>  b'X'  <<]
    field_declaration_list:  [>>  b'{\n}'  <<]
      {
      }
  ;
  declaration:  [>>  b'void foo(double);'  <<]
    primitive_type:  [>>  b'void'  <<]
    function_declarator:  [>>  b'foo(double)'  <<]
      identifier:  [>>  b'foo'  <<]
      parameter_list:  [>>  b'(double)'  <<]
        (
        parameter_declaration:  [>>  b'double'  <<]
          primitive_type:  [>>  b'double'  <<]
        )
    ;
  comment:  [>>  b'// f6'  <<]
  declaration:  [>>  b'void foo(int);'  <<]
    primitive_type:  [>>  b'void'  <<]
    function_declarator:  [>>  b'foo(int)'  <<]
      identifier:  [>>  b'foo'  <<]
      parameter_list:  [>>  b'(int)'  <<]
        (
        parameter_declaration:  [>>  b'int'  <<]
          primitive_type:  [>>  b'int'  <<]
        )
    ;
  comment:  [>>  b'// f7'  <<]
  function_definition:  [>>  b"void bar(Y &aY)\n{\n    // Candidate_func={f6,f7}, Validate_func={f6,f7} best:\n    // f7<cr promotion:ck std>\n    foo('c');\n    // Candidate_func={f6,f7},Validate_func={f6,f7} best:\n    // f7 <cr user:ck user->ck std>\n    foo(aY);\n    // Candidate_func={f1...f5},Validate_func={f1,f2,f3} best:\n    // f2 <cr std:ck ptr,cr identity:ck identity>\n    aY.foo('a');\n    // Candidate_func={f1...f5},Validate_func={f1...f5} best:\n    // f5 <cr std:ck ptr,cr identity:ck ref bind>\n    aY.foo(aY);\n}"  <<]
    primitive_type:  [>>  b'void'  <<]
    function_declarator:  [>>  b'bar(Y &aY)'  <<]
      identifier:  [>>  b'bar'  <<]
      parameter_list:  [>>  b'(Y &aY)'  <<]
        (
        parameter_declaration:  [>>  b'Y &aY'  <<]
          type_identifier:  [>>  b'Y'  <<]
          reference_declarator:  [>>  b'&aY'  <<]
            &
            identifier:  [>>  b'aY'  <<]
        )
    compound_statement:  [>>  b"{\n    // Candidate_func={f6,f7}, Validate_func={f6,f7} best:\n    // f7<cr promotion:ck std>\n    foo('c');\n    // Candidate_func={f6,f7},Validate_func={f6,f7} best:\n    // f7 <cr user:ck user->ck std>\n    foo(aY);\n    // Candidate_func={f1...f5},Validate_func={f1,f2,f3} best:\n    // f2 <cr std:ck ptr,cr identity:ck identity>\n    aY.foo('a');\n    // Candidate_func={f1...f5},Validate_func={f1...f5} best:\n    // f5 <cr std:ck ptr,cr identity:ck ref bind>\n    aY.foo(aY);\n}"  <<]
      {
      comment:  [>>  b'// Candidate_func={f6,f7}, Validate_func={f6,f7} best:'  <<]
      comment:  [>>  b'// f7<cr promotion:ck std>'  <<]
      expression_statement:  [>>  b"foo('c');"  <<]
        call_expression:  [>>  b"foo('c')"  <<]
          identifier:  [>>  b'foo'  <<]
          argument_list:  [>>  b"('c')"  <<]
            (
            char_literal:  [>>  b"'c'"  <<]
              '
              character:  [>>  b'c'  <<]
              '
            )
        ;
      comment:  [>>  b'// Candidate_func={f6,f7},Validate_func={f6,f7} best:'  <<]
      comment:  [>>  b'// f7 <cr user:ck user->ck std>'  <<]
      expression_statement:  [>>  b'foo(aY);'  <<]
        call_expression:  [>>  b'foo(aY)'  <<]
          identifier:  [>>  b'foo'  <<]
          argument_list:  [>>  b'(aY)'  <<]
            (
            identifier:  [>>  b'aY'  <<]
            )
        ;
      comment:  [>>  b'// Candidate_func={f1...f5},Validate_func={f1,f2,f3} best:'  <<]
      comment:  [>>  b'// f2 <cr std:ck ptr,cr identity:ck identity>'  <<]
      expression_statement:  [>>  b"aY.foo('a');"  <<]
        call_expression:  [>>  b"aY.foo('a')"  <<]
          field_expression:  [>>  b'aY.foo'  <<]
            identifier:  [>>  b'aY'  <<]
            .
            field_identifier:  [>>  b'foo'  <<]
          argument_list:  [>>  b"('a')"  <<]
            (
            char_literal:  [>>  b"'a'"  <<]
              '
              character:  [>>  b'a'  <<]
              '
            )
        ;
      comment:  [>>  b'// Candidate_func={f1...f5},Validate_func={f1...f5} best:'  <<]
      comment:  [>>  b'// f5 <cr std:ck ptr,cr identity:ck ref bind>'  <<]
      expression_statement:  [>>  b'aY.foo(aY);'  <<]
        call_expression:  [>>  b'aY.foo(aY)'  <<]
          field_expression:  [>>  b'aY.foo'  <<]
            identifier:  [>>  b'aY'  <<]
            .
            field_identifier:  [>>  b'foo'  <<]
          argument_list:  [>>  b'(aY)'  <<]
            (
            identifier:  [>>  b'aY'  <<]
            )
        ;
      }
(translation_unit (class_specifier name: (type_identifier)) (class_specifier name: (type_identifier) body: (field_declaration_list (access_specifier) (function_definition declarator: (operator_cast type: (primitive_type) declarator: (abstract_function_declarator parameters: (parameter_list) (type_qualifier))) body: (compound_statement (return_statement (char_literal (character))))) (field_declaration type: (primitive_type) declarator: (function_declarator declarator: (field_identifier) parameters: (parameter_list (parameter_declaration type: (primitive_type))))) (comment) (field_declaration type: (primitive_type) declarator: (function_declarator declarator: (field_identifier) parameters: (parameter_list (parameter_declaration type: (primitive_type))))) (comment) (field_declaration type: (primitive_type) declarator: (function_declarator declarator: (field_identifier) parameters: (parameter_list (parameter_declaration type: (primitive_type))))) (comment) (field_declaration type: (primitive_type) declarator: (function_declarator declarator: (field_identifier) parameters: (parameter_list (parameter_declaration type: (type_identifier))))) (comment) (field_declaration type: (primitive_type) declarator: (function_declarator declarator: (field_identifier) parameters: (parameter_list (parameter_declaration type: (type_identifier) declarator: (abstract_reference_declarator))))) (comment))) (class_specifier name: (type_identifier) (base_class_clause (access_specifier) (type_identifier)) body: (field_declaration_list)) (declaration type: (primitive_type) declarator: (function_declarator declarator: (identifier) parameters: (parameter_list (parameter_declaration type: (primitive_type))))) (comment) (declaration type: (primitive_type) declarator: (function_declarator declarator: (identifier) parameters: (parameter_list (parameter_declaration type: (primitive_type))))) (comment) (function_definition type: (primitive_type) declarator: (function_declarator declarator: (identifier) parameters: (parameter_list (parameter_declaration type: (type_identifier) declarator: (reference_declarator (identifier))))) body: (compound_statement (comment) (comment) (expression_statement (call_expression function: (identifier) arguments: (argument_list (char_literal (character))))) (comment) (comment) (expression_statement (call_expression function: (identifier) arguments: (argument_list (identifier)))) (comment) (comment) (expression_statement (call_expression function: (field_expression argument: (identifier) field: (field_identifier)) arguments: (argument_list (char_literal (character))))) (comment) (comment) (expression_statement (call_expression function: (field_expression argument: (identifier) field: (field_identifier)) arguments: (argument_list (identifier)))))))
