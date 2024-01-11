translation_unit:  [>>  b'/*\n\xe5\x8f\xaf\xe4\xbb\xa5\xe6\x8a\x8a\xe4\xb8\x80\xe4\xb8\xaa\xe9\x9d\x9evolatile int \xe8\xb5\x8b\xe7\xbb\x99 volatile int\xef\xbc\x8c\xe4\xbd\x86\xe6\x98\xaf\xe4\xb8\x8d\xe8\x83\xbd\xe6\x8a\x8a\xe9\x9d\x9evolatile\xe5\xaf\xb9\xe8\xb1\xa1\xe8\xb5\x8b\xe7\xbb\x99\xe4\xb8\x80\xe4\xb8\xaavolatile\xe5\xaf\xb9\xe8\xb1\xa1\xe3\x80\x82\nvolatile \xe5\x8f\xaf\xe4\xbb\xa5\xe4\xbf\xae\xe9\xa5\xb0\xe6\x8c\x87\xe9\x92\x88\xef\xbc\x8c\xe5\x9c\xa8\xe5\x89\x8d\xe6\x88\x96\xe5\x90\x8e\xe4\xbf\xae\xe9\xa5\xb0\xe6\x8c\x87\xe9\x92\x88\xe6\x9c\xac\xe8\xba\xab\xe6\x88\x96\xe6\x8c\x87\xe9\x92\x88\xe6\x8c\x87\xe5\x90\x91\xe7\x9a\x84\xe5\x86\x85\xe5\xae\xb9\nC++\xe4\xb8\xad\xe4\xb8\x80\xe4\xb8\xaa\xe7\x94\xb1volatile\xe6\xa0\x87\xe8\xaf\x86\xe7\x9a\x84\xe7\xb1\xbb\xe5\x86\x85\xe5\xaf\xb9\xe8\xb1\xa1\xe6\x88\x96\xe5\x87\xbd\xe6\x95\xb0\xe4\xbc\x9a\xe8\xa2\xab\xe5\x8f\x97\xe9\x99\x90\xe8\xae\xbf\xe9\x97\xae\xe3\x80\x82\xe7\x94\xa8\xe6\x88\xb7\xe5\x8f\xaa\xe8\x83\xbd\xe7\x94\xa8const_cast\xe6\x9d\xa5\xe8\x8e\xb7\xe5\xbe\x97\xe5\xaf\xb9\xe7\xb1\xbb\xe6\x8e\xa5\xe5\x8f\xa3\xe7\x9a\x84\xe5\xae\x8c\xe5\x85\xa8\xe8\xae\xbf\xe9\x97\xae\xe3\x80\x82*/\nclass Example\n{\npublic:\n    Example(int data) : data(data) {}\n    void printData() const volatile {\n        // std::cout << "Legal access: " << data << std::endl;\n    }\nprivate:\n    int data;\n};\nint main()\n{\n\tvolatile int i = 10;\n    volatile char* myVolatileStr1;\n    char* volatile myVolatileStr2;\n    volatile char* volatile reg;\n\tint a = i;\n    volatile int j = a;\n    Example volatileObj(42);\n    volatileObj.printData();\n    const Example& constRefObj = volatileObj;\n    const_cast<Example&>(constRefObj).printData();\n}\n'  <<]
  comment:  [>>  b'/*\n\xe5\x8f\xaf\xe4\xbb\xa5\xe6\x8a\x8a\xe4\xb8\x80\xe4\xb8\xaa\xe9\x9d\x9evolatile int \xe8\xb5\x8b\xe7\xbb\x99 volatile int\xef\xbc\x8c\xe4\xbd\x86\xe6\x98\xaf\xe4\xb8\x8d\xe8\x83\xbd\xe6\x8a\x8a\xe9\x9d\x9evolatile\xe5\xaf\xb9\xe8\xb1\xa1\xe8\xb5\x8b\xe7\xbb\x99\xe4\xb8\x80\xe4\xb8\xaavolatile\xe5\xaf\xb9\xe8\xb1\xa1\xe3\x80\x82\nvolatile \xe5\x8f\xaf\xe4\xbb\xa5\xe4\xbf\xae\xe9\xa5\xb0\xe6\x8c\x87\xe9\x92\x88\xef\xbc\x8c\xe5\x9c\xa8\xe5\x89\x8d\xe6\x88\x96\xe5\x90\x8e\xe4\xbf\xae\xe9\xa5\xb0\xe6\x8c\x87\xe9\x92\x88\xe6\x9c\xac\xe8\xba\xab\xe6\x88\x96\xe6\x8c\x87\xe9\x92\x88\xe6\x8c\x87\xe5\x90\x91\xe7\x9a\x84\xe5\x86\x85\xe5\xae\xb9\nC++\xe4\xb8\xad\xe4\xb8\x80\xe4\xb8\xaa\xe7\x94\xb1volatile\xe6\xa0\x87\xe8\xaf\x86\xe7\x9a\x84\xe7\xb1\xbb\xe5\x86\x85\xe5\xaf\xb9\xe8\xb1\xa1\xe6\x88\x96\xe5\x87\xbd\xe6\x95\xb0\xe4\xbc\x9a\xe8\xa2\xab\xe5\x8f\x97\xe9\x99\x90\xe8\xae\xbf\xe9\x97\xae\xe3\x80\x82\xe7\x94\xa8\xe6\x88\xb7\xe5\x8f\xaa\xe8\x83\xbd\xe7\x94\xa8const_cast\xe6\x9d\xa5\xe8\x8e\xb7\xe5\xbe\x97\xe5\xaf\xb9\xe7\xb1\xbb\xe6\x8e\xa5\xe5\x8f\xa3\xe7\x9a\x84\xe5\xae\x8c\xe5\x85\xa8\xe8\xae\xbf\xe9\x97\xae\xe3\x80\x82*/'  <<]
  class_specifier:  [>>  b'class Example\n{\npublic:\n    Example(int data) : data(data) {}\n    void printData() const volatile {\n        // std::cout << "Legal access: " << data << std::endl;\n    }\nprivate:\n    int data;\n}'  <<]
    class
    type_identifier:  [>>  b'Example'  <<]
    field_declaration_list:  [>>  b'{\npublic:\n    Example(int data) : data(data) {}\n    void printData() const volatile {\n        // std::cout << "Legal access: " << data << std::endl;\n    }\nprivate:\n    int data;\n}'  <<]
      {
      access_specifier:  [>>  b'public'  <<]
        public
      :
      function_definition:  [>>  b'Example(int data) : data(data) {}'  <<]
        function_declarator:  [>>  b'Example(int data)'  <<]
          identifier:  [>>  b'Example'  <<]
          parameter_list:  [>>  b'(int data)'  <<]
            (
            parameter_declaration:  [>>  b'int data'  <<]
              primitive_type:  [>>  b'int'  <<]
              identifier:  [>>  b'data'  <<]
            )
        field_initializer_list:  [>>  b': data(data)'  <<]
          :
          field_initializer:  [>>  b'data(data)'  <<]
            field_identifier:  [>>  b'data'  <<]
            argument_list:  [>>  b'(data)'  <<]
              (
              identifier:  [>>  b'data'  <<]
              )
        compound_statement:  [>>  b'{}'  <<]
          {
          }
      function_definition:  [>>  b'void printData() const volatile {\n        // std::cout << "Legal access: " << data << std::endl;\n    }'  <<]
        primitive_type:  [>>  b'void'  <<]
        function_declarator:  [>>  b'printData() const volatile'  <<]
          field_identifier:  [>>  b'printData'  <<]
          parameter_list:  [>>  b'()'  <<]
            (
            )
          type_qualifier:  [>>  b'const'  <<]
            const
          type_qualifier:  [>>  b'volatile'  <<]
            volatile
        compound_statement:  [>>  b'{\n        // std::cout << "Legal access: " << data << std::endl;\n    }'  <<]
          {
          comment:  [>>  b'// std::cout << "Legal access: " << data << std::endl;'  <<]
          }
      access_specifier:  [>>  b'private'  <<]
        private
      :
      field_declaration:  [>>  b'int data;'  <<]
        primitive_type:  [>>  b'int'  <<]
        field_identifier:  [>>  b'data'  <<]
        ;
      }
  ;
  function_definition:  [>>  b'int main()\n{\n\tvolatile int i = 10;\n    volatile char* myVolatileStr1;\n    char* volatile myVolatileStr2;\n    volatile char* volatile reg;\n\tint a = i;\n    volatile int j = a;\n    Example volatileObj(42);\n    volatileObj.printData();\n    const Example& constRefObj = volatileObj;\n    const_cast<Example&>(constRefObj).printData();\n}'  <<]
    primitive_type:  [>>  b'int'  <<]
    function_declarator:  [>>  b'main()'  <<]
      identifier:  [>>  b'main'  <<]
      parameter_list:  [>>  b'()'  <<]
        (
        )
    compound_statement:  [>>  b'{\n\tvolatile int i = 10;\n    volatile char* myVolatileStr1;\n    char* volatile myVolatileStr2;\n    volatile char* volatile reg;\n\tint a = i;\n    volatile int j = a;\n    Example volatileObj(42);\n    volatileObj.printData();\n    const Example& constRefObj = volatileObj;\n    const_cast<Example&>(constRefObj).printData();\n}'  <<]
      {
      declaration:  [>>  b'volatile int i = 10;'  <<]
        type_qualifier:  [>>  b'volatile'  <<]
          volatile
        primitive_type:  [>>  b'int'  <<]
        init_declarator:  [>>  b'i = 10'  <<]
          identifier:  [>>  b'i'  <<]
          =
          number_literal:  [>>  b'10'  <<]
        ;
      declaration:  [>>  b'volatile char* myVolatileStr1;'  <<]
        type_qualifier:  [>>  b'volatile'  <<]
          volatile
        primitive_type:  [>>  b'char'  <<]
        pointer_declarator:  [>>  b'* myVolatileStr1'  <<]
          *
          identifier:  [>>  b'myVolatileStr1'  <<]
        ;
      declaration:  [>>  b'char* volatile myVolatileStr2;'  <<]
        primitive_type:  [>>  b'char'  <<]
        pointer_declarator:  [>>  b'* volatile myVolatileStr2'  <<]
          *
          type_qualifier:  [>>  b'volatile'  <<]
            volatile
          identifier:  [>>  b'myVolatileStr2'  <<]
        ;
      declaration:  [>>  b'volatile char* volatile reg;'  <<]
        type_qualifier:  [>>  b'volatile'  <<]
          volatile
        primitive_type:  [>>  b'char'  <<]
        pointer_declarator:  [>>  b'* volatile reg'  <<]
          *
          type_qualifier:  [>>  b'volatile'  <<]
            volatile
          identifier:  [>>  b'reg'  <<]
        ;
      declaration:  [>>  b'int a = i;'  <<]
        primitive_type:  [>>  b'int'  <<]
        init_declarator:  [>>  b'a = i'  <<]
          identifier:  [>>  b'a'  <<]
          =
          identifier:  [>>  b'i'  <<]
        ;
      declaration:  [>>  b'volatile int j = a;'  <<]
        type_qualifier:  [>>  b'volatile'  <<]
          volatile
        primitive_type:  [>>  b'int'  <<]
        init_declarator:  [>>  b'j = a'  <<]
          identifier:  [>>  b'j'  <<]
          =
          identifier:  [>>  b'a'  <<]
        ;
      declaration:  [>>  b'Example volatileObj(42);'  <<]
        type_identifier:  [>>  b'Example'  <<]
        init_declarator:  [>>  b'volatileObj(42)'  <<]
          identifier:  [>>  b'volatileObj'  <<]
          argument_list:  [>>  b'(42)'  <<]
            (
            number_literal:  [>>  b'42'  <<]
            )
        ;
      expression_statement:  [>>  b'volatileObj.printData();'  <<]
        call_expression:  [>>  b'volatileObj.printData()'  <<]
          field_expression:  [>>  b'volatileObj.printData'  <<]
            identifier:  [>>  b'volatileObj'  <<]
            .
            field_identifier:  [>>  b'printData'  <<]
          argument_list:  [>>  b'()'  <<]
            (
            )
        ;
      declaration:  [>>  b'const Example& constRefObj = volatileObj;'  <<]
        type_qualifier:  [>>  b'const'  <<]
          const
        type_identifier:  [>>  b'Example'  <<]
        init_declarator:  [>>  b'& constRefObj = volatileObj'  <<]
          reference_declarator:  [>>  b'& constRefObj'  <<]
            &
            identifier:  [>>  b'constRefObj'  <<]
          =
          identifier:  [>>  b'volatileObj'  <<]
        ;
      expression_statement:  [>>  b'const_cast<Example&>(constRefObj).printData();'  <<]
        call_expression:  [>>  b'const_cast<Example&>(constRefObj).printData()'  <<]
          field_expression:  [>>  b'const_cast<Example&>(constRefObj).printData'  <<]
            call_expression:  [>>  b'const_cast<Example&>(constRefObj)'  <<]
              template_function:  [>>  b'const_cast<Example&>'  <<]
                identifier:  [>>  b'const_cast'  <<]
                template_argument_list:  [>>  b'<Example&>'  <<]
                  <
                  type_descriptor:  [>>  b'Example&'  <<]
                    type_identifier:  [>>  b'Example'  <<]
                    abstract_reference_declarator:  [>>  b'&'  <<]
                      &
                  >
              argument_list:  [>>  b'(constRefObj)'  <<]
                (
                identifier:  [>>  b'constRefObj'  <<]
                )
            .
            field_identifier:  [>>  b'printData'  <<]
          argument_list:  [>>  b'()'  <<]
            (
            )
        ;
      }
(translation_unit (comment) (class_specifier name: (type_identifier) body: (field_declaration_list (access_specifier) (function_definition declarator: (function_declarator declarator: (identifier) parameters: (parameter_list (parameter_declaration type: (primitive_type) declarator: (identifier)))) (field_initializer_list (field_initializer (field_identifier) (argument_list (identifier)))) body: (compound_statement)) (function_definition type: (primitive_type) declarator: (function_declarator declarator: (field_identifier) parameters: (parameter_list) (type_qualifier) (type_qualifier)) body: (compound_statement (comment))) (access_specifier) (field_declaration type: (primitive_type) declarator: (field_identifier)))) (function_definition type: (primitive_type) declarator: (function_declarator declarator: (identifier) parameters: (parameter_list)) body: (compound_statement (declaration (type_qualifier) type: (primitive_type) declarator: (init_declarator declarator: (identifier) value: (number_literal))) (declaration (type_qualifier) type: (primitive_type) declarator: (pointer_declarator declarator: (identifier))) (declaration type: (primitive_type) declarator: (pointer_declarator (type_qualifier) declarator: (identifier))) (declaration (type_qualifier) type: (primitive_type) declarator: (pointer_declarator (type_qualifier) declarator: (identifier))) (declaration type: (primitive_type) declarator: (init_declarator declarator: (identifier) value: (identifier))) (declaration (type_qualifier) type: (primitive_type) declarator: (init_declarator declarator: (identifier) value: (identifier))) (declaration type: (type_identifier) declarator: (init_declarator declarator: (identifier) value: (argument_list (number_literal)))) (expression_statement (call_expression function: (field_expression argument: (identifier) field: (field_identifier)) arguments: (argument_list))) (declaration (type_qualifier) type: (type_identifier) declarator: (init_declarator declarator: (reference_declarator (identifier)) value: (identifier))) (expression_statement (call_expression function: (field_expression argument: (call_expression function: (template_function name: (identifier) arguments: (template_argument_list (type_descriptor type: (type_identifier) declarator: (abstract_reference_declarator)))) arguments: (argument_list (identifier))) field: (field_identifier)) arguments: (argument_list))))))
