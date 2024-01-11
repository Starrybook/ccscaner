translation_unit:  [>>  b"union MyUnion {\n    std::int32_t n;     // \xe5\x8d\xa0\xe7\x94\xa8 4 \xe5\xad\x97\xe8\x8a\x82\n    std::uint16_t s[2]; // \xe5\x8d\xa0\xe7\x94\xa8 4 \xe5\xad\x97\xe8\x8a\x82\n    std::uint8_t c;     // \xe5\x8d\xa0\xe7\x94\xa8 1 \xe5\xad\x97\xe8\x8a\x82\n};\nstruct S\n{\n    enum{CHAR, INT, DOUBLE} tag;\n    union\n    {\n        char c;\n        int i;\n        double d;\n    };\n};\nunion PeopleInfo {\n    struct {\n        int employeeId;\n    } regularEmployee;\n    struct {\n        int contractorId;\n    } contractor;\n};\nint main() {\n    MyUnion u = {0x12345678};\n    u.s[0] = 0x0011;   //u.n\xe4\xb9\x9f\xe8\xa2\xab\xe6\x94\xb9\xe5\x8f\x98\n    S s = {S::CHAR, 'a'};\n    PeopleInfo people;\n    people.regularEmployee.employeeId = 10034;\n    people.contractor.contractorId = 2435;\n    return 0;\n}\n"  <<]
  union_specifier:  [>>  b'union MyUnion {\n    std::int32_t n;     // \xe5\x8d\xa0\xe7\x94\xa8 4 \xe5\xad\x97\xe8\x8a\x82\n    std::uint16_t s[2]; // \xe5\x8d\xa0\xe7\x94\xa8 4 \xe5\xad\x97\xe8\x8a\x82\n    std::uint8_t c;     // \xe5\x8d\xa0\xe7\x94\xa8 1 \xe5\xad\x97\xe8\x8a\x82\n}'  <<]
    union
    type_identifier:  [>>  b'MyUnion'  <<]
    field_declaration_list:  [>>  b'{\n    std::int32_t n;     // \xe5\x8d\xa0\xe7\x94\xa8 4 \xe5\xad\x97\xe8\x8a\x82\n    std::uint16_t s[2]; // \xe5\x8d\xa0\xe7\x94\xa8 4 \xe5\xad\x97\xe8\x8a\x82\n    std::uint8_t c;     // \xe5\x8d\xa0\xe7\x94\xa8 1 \xe5\xad\x97\xe8\x8a\x82\n}'  <<]
      {
      field_declaration:  [>>  b'std::int32_t n;'  <<]
        qualified_identifier:  [>>  b'std::int32_t'  <<]
          namespace_identifier:  [>>  b'std'  <<]
          ::
          type_identifier:  [>>  b'int32_t'  <<]
        field_identifier:  [>>  b'n'  <<]
        ;
      comment:  [>>  b'// \xe5\x8d\xa0\xe7\x94\xa8 4 \xe5\xad\x97\xe8\x8a\x82'  <<]
      field_declaration:  [>>  b'std::uint16_t s[2];'  <<]
        qualified_identifier:  [>>  b'std::uint16_t'  <<]
          namespace_identifier:  [>>  b'std'  <<]
          ::
          type_identifier:  [>>  b'uint16_t'  <<]
        array_declarator:  [>>  b's[2]'  <<]
          field_identifier:  [>>  b's'  <<]
          [
          number_literal:  [>>  b'2'  <<]
          ]
        ;
      comment:  [>>  b'// \xe5\x8d\xa0\xe7\x94\xa8 4 \xe5\xad\x97\xe8\x8a\x82'  <<]
      field_declaration:  [>>  b'std::uint8_t c;'  <<]
        qualified_identifier:  [>>  b'std::uint8_t'  <<]
          namespace_identifier:  [>>  b'std'  <<]
          ::
          type_identifier:  [>>  b'uint8_t'  <<]
        field_identifier:  [>>  b'c'  <<]
        ;
      comment:  [>>  b'// \xe5\x8d\xa0\xe7\x94\xa8 1 \xe5\xad\x97\xe8\x8a\x82'  <<]
      }
  ;
  struct_specifier:  [>>  b'struct S\n{\n    enum{CHAR, INT, DOUBLE} tag;\n    union\n    {\n        char c;\n        int i;\n        double d;\n    };\n}'  <<]
    struct
    type_identifier:  [>>  b'S'  <<]
    field_declaration_list:  [>>  b'{\n    enum{CHAR, INT, DOUBLE} tag;\n    union\n    {\n        char c;\n        int i;\n        double d;\n    };\n}'  <<]
      {
      field_declaration:  [>>  b'enum{CHAR, INT, DOUBLE} tag;'  <<]
        enum_specifier:  [>>  b'enum{CHAR, INT, DOUBLE}'  <<]
          enum
          enumerator_list:  [>>  b'{CHAR, INT, DOUBLE}'  <<]
            {
            enumerator:  [>>  b'CHAR'  <<]
              identifier:  [>>  b'CHAR'  <<]
            ,
            enumerator:  [>>  b'INT'  <<]
              identifier:  [>>  b'INT'  <<]
            ,
            enumerator:  [>>  b'DOUBLE'  <<]
              identifier:  [>>  b'DOUBLE'  <<]
            }
        field_identifier:  [>>  b'tag'  <<]
        ;
      field_declaration:  [>>  b'union\n    {\n        char c;\n        int i;\n        double d;\n    };'  <<]
        union_specifier:  [>>  b'union\n    {\n        char c;\n        int i;\n        double d;\n    }'  <<]
          union
          field_declaration_list:  [>>  b'{\n        char c;\n        int i;\n        double d;\n    }'  <<]
            {
            field_declaration:  [>>  b'char c;'  <<]
              primitive_type:  [>>  b'char'  <<]
              field_identifier:  [>>  b'c'  <<]
              ;
            field_declaration:  [>>  b'int i;'  <<]
              primitive_type:  [>>  b'int'  <<]
              field_identifier:  [>>  b'i'  <<]
              ;
            field_declaration:  [>>  b'double d;'  <<]
              primitive_type:  [>>  b'double'  <<]
              field_identifier:  [>>  b'd'  <<]
              ;
            }
        ;
      }
  ;
  union_specifier:  [>>  b'union PeopleInfo {\n    struct {\n        int employeeId;\n    } regularEmployee;\n    struct {\n        int contractorId;\n    } contractor;\n}'  <<]
    union
    type_identifier:  [>>  b'PeopleInfo'  <<]
    field_declaration_list:  [>>  b'{\n    struct {\n        int employeeId;\n    } regularEmployee;\n    struct {\n        int contractorId;\n    } contractor;\n}'  <<]
      {
      field_declaration:  [>>  b'struct {\n        int employeeId;\n    } regularEmployee;'  <<]
        struct_specifier:  [>>  b'struct {\n        int employeeId;\n    }'  <<]
          struct
          field_declaration_list:  [>>  b'{\n        int employeeId;\n    }'  <<]
            {
            field_declaration:  [>>  b'int employeeId;'  <<]
              primitive_type:  [>>  b'int'  <<]
              field_identifier:  [>>  b'employeeId'  <<]
              ;
            }
        field_identifier:  [>>  b'regularEmployee'  <<]
        ;
      field_declaration:  [>>  b'struct {\n        int contractorId;\n    } contractor;'  <<]
        struct_specifier:  [>>  b'struct {\n        int contractorId;\n    }'  <<]
          struct
          field_declaration_list:  [>>  b'{\n        int contractorId;\n    }'  <<]
            {
            field_declaration:  [>>  b'int contractorId;'  <<]
              primitive_type:  [>>  b'int'  <<]
              field_identifier:  [>>  b'contractorId'  <<]
              ;
            }
        field_identifier:  [>>  b'contractor'  <<]
        ;
      }
  ;
  function_definition:  [>>  b"int main() {\n    MyUnion u = {0x12345678};\n    u.s[0] = 0x0011;   //u.n\xe4\xb9\x9f\xe8\xa2\xab\xe6\x94\xb9\xe5\x8f\x98\n    S s = {S::CHAR, 'a'};\n    PeopleInfo people;\n    people.regularEmployee.employeeId = 10034;\n    people.contractor.contractorId = 2435;\n    return 0;\n}"  <<]
    primitive_type:  [>>  b'int'  <<]
    function_declarator:  [>>  b'main()'  <<]
      identifier:  [>>  b'main'  <<]
      parameter_list:  [>>  b'()'  <<]
        (
        )
    compound_statement:  [>>  b"{\n    MyUnion u = {0x12345678};\n    u.s[0] = 0x0011;   //u.n\xe4\xb9\x9f\xe8\xa2\xab\xe6\x94\xb9\xe5\x8f\x98\n    S s = {S::CHAR, 'a'};\n    PeopleInfo people;\n    people.regularEmployee.employeeId = 10034;\n    people.contractor.contractorId = 2435;\n    return 0;\n}"  <<]
      {
      declaration:  [>>  b'MyUnion u = {0x12345678};'  <<]
        type_identifier:  [>>  b'MyUnion'  <<]
        init_declarator:  [>>  b'u = {0x12345678}'  <<]
          identifier:  [>>  b'u'  <<]
          =
          initializer_list:  [>>  b'{0x12345678}'  <<]
            {
            number_literal:  [>>  b'0x12345678'  <<]
            }
        ;
      expression_statement:  [>>  b'u.s[0] = 0x0011;'  <<]
        assignment_expression:  [>>  b'u.s[0] = 0x0011'  <<]
          subscript_expression:  [>>  b'u.s[0]'  <<]
            field_expression:  [>>  b'u.s'  <<]
              identifier:  [>>  b'u'  <<]
              .
              field_identifier:  [>>  b's'  <<]
            subscript_argument_list:  [>>  b'[0]'  <<]
              [
              number_literal:  [>>  b'0'  <<]
              ]
          =
          number_literal:  [>>  b'0x0011'  <<]
        ;
      comment:  [>>  b'//u.n\xe4\xb9\x9f\xe8\xa2\xab\xe6\x94\xb9\xe5\x8f\x98'  <<]
      declaration:  [>>  b"S s = {S::CHAR, 'a'};"  <<]
        type_identifier:  [>>  b'S'  <<]
        init_declarator:  [>>  b"s = {S::CHAR, 'a'}"  <<]
          identifier:  [>>  b's'  <<]
          =
          initializer_list:  [>>  b"{S::CHAR, 'a'}"  <<]
            {
            qualified_identifier:  [>>  b'S::CHAR'  <<]
              namespace_identifier:  [>>  b'S'  <<]
              ::
              identifier:  [>>  b'CHAR'  <<]
            ,
            char_literal:  [>>  b"'a'"  <<]
              '
              character:  [>>  b'a'  <<]
              '
            }
        ;
      declaration:  [>>  b'PeopleInfo people;'  <<]
        type_identifier:  [>>  b'PeopleInfo'  <<]
        identifier:  [>>  b'people'  <<]
        ;
      expression_statement:  [>>  b'people.regularEmployee.employeeId = 10034;'  <<]
        assignment_expression:  [>>  b'people.regularEmployee.employeeId = 10034'  <<]
          field_expression:  [>>  b'people.regularEmployee.employeeId'  <<]
            field_expression:  [>>  b'people.regularEmployee'  <<]
              identifier:  [>>  b'people'  <<]
              .
              field_identifier:  [>>  b'regularEmployee'  <<]
            .
            field_identifier:  [>>  b'employeeId'  <<]
          =
          number_literal:  [>>  b'10034'  <<]
        ;
      expression_statement:  [>>  b'people.contractor.contractorId = 2435;'  <<]
        assignment_expression:  [>>  b'people.contractor.contractorId = 2435'  <<]
          field_expression:  [>>  b'people.contractor.contractorId'  <<]
            field_expression:  [>>  b'people.contractor'  <<]
              identifier:  [>>  b'people'  <<]
              .
              field_identifier:  [>>  b'contractor'  <<]
            .
            field_identifier:  [>>  b'contractorId'  <<]
          =
          number_literal:  [>>  b'2435'  <<]
        ;
      return_statement:  [>>  b'return 0;'  <<]
        return
        number_literal:  [>>  b'0'  <<]
        ;
      }
(translation_unit (union_specifier name: (type_identifier) body: (field_declaration_list (field_declaration type: (qualified_identifier scope: (namespace_identifier) name: (type_identifier)) declarator: (field_identifier)) (comment) (field_declaration type: (qualified_identifier scope: (namespace_identifier) name: (type_identifier)) declarator: (array_declarator declarator: (field_identifier) size: (number_literal))) (comment) (field_declaration type: (qualified_identifier scope: (namespace_identifier) name: (type_identifier)) declarator: (field_identifier)) (comment))) (struct_specifier name: (type_identifier) body: (field_declaration_list (field_declaration type: (enum_specifier body: (enumerator_list (enumerator name: (identifier)) (enumerator name: (identifier)) (enumerator name: (identifier)))) declarator: (field_identifier)) (field_declaration type: (union_specifier body: (field_declaration_list (field_declaration type: (primitive_type) declarator: (field_identifier)) (field_declaration type: (primitive_type) declarator: (field_identifier)) (field_declaration type: (primitive_type) declarator: (field_identifier))))))) (union_specifier name: (type_identifier) body: (field_declaration_list (field_declaration type: (struct_specifier body: (field_declaration_list (field_declaration type: (primitive_type) declarator: (field_identifier)))) declarator: (field_identifier)) (field_declaration type: (struct_specifier body: (field_declaration_list (field_declaration type: (primitive_type) declarator: (field_identifier)))) declarator: (field_identifier)))) (function_definition type: (primitive_type) declarator: (function_declarator declarator: (identifier) parameters: (parameter_list)) body: (compound_statement (declaration type: (type_identifier) declarator: (init_declarator declarator: (identifier) value: (initializer_list (number_literal)))) (expression_statement (assignment_expression left: (subscript_expression argument: (field_expression argument: (identifier) field: (field_identifier)) indices: (subscript_argument_list (number_literal))) right: (number_literal))) (comment) (declaration type: (type_identifier) declarator: (init_declarator declarator: (identifier) value: (initializer_list (qualified_identifier scope: (namespace_identifier) name: (identifier)) (char_literal (character))))) (declaration type: (type_identifier) declarator: (identifier)) (expression_statement (assignment_expression left: (field_expression argument: (field_expression argument: (identifier) field: (field_identifier)) field: (field_identifier)) right: (number_literal))) (expression_statement (assignment_expression left: (field_expression argument: (field_expression argument: (identifier) field: (field_identifier)) field: (field_identifier)) right: (number_literal))) (return_statement (number_literal)))))
