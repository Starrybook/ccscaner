translation_unit:  [>>  b'/*lambda\xe6\x8d\x95\xe8\x8e\xb7\xef\xbc\x88\xe5\xbc\x95\xe7\x94\xa8&/\xe5\xa4\x8d\xe5\x88\xb6=\xef\xbc\x89\n[] \xe4\xb8\x8d\xe6\x88\xaa\xe5\x8f\x96\xe4\xbb\xbb\xe4\xbd\x95\xe5\x8f\x98\xe9\x87\x8f\n[&] \xe6\x88\xaa\xe5\x8f\x96\xe5\xa4\x96\xe9\x83\xa8\xe4\xbd\x9c\xe7\x94\xa8\xe5\x9f\x9f\xe4\xb8\xad\xe6\x89\x80\xe6\x9c\x89\xe5\x8f\x98\xe9\x87\x8f\xef\xbc\x8c\xe5\xb9\xb6\xe4\xbd\x9c\xe4\xb8\xba\xe5\xbc\x95\xe7\x94\xa8\xe5\x9c\xa8\xe5\x87\xbd\xe6\x95\xb0\xe4\xbd\x93\xe4\xb8\xad\xe4\xbd\xbf\xe7\x94\xa8\n[=] \xe6\x88\xaa\xe5\x8f\x96\xe5\xa4\x96\xe9\x83\xa8\xe4\xbd\x9c\xe7\x94\xa8\xe5\x9f\x9f\xe4\xb8\xad\xe6\x89\x80\xe6\x9c\x89\xe5\x8f\x98\xe9\x87\x8f\xef\xbc\x8c\xe5\xb9\xb6\xe6\x8b\xb7\xe8\xb4\x9d\xe4\xb8\x80\xe4\xbb\xbd\xe5\x9c\xa8\xe5\x87\xbd\xe6\x95\xb0\xe4\xbd\x93\xe4\xb8\xad\xe4\xbd\xbf\xe7\x94\xa8\n[=, &foo] \xe6\x88\xaa\xe5\x8f\x96\xe5\xa4\x96\xe9\x83\xa8\xe4\xbd\x9c\xe7\x94\xa8\xe5\x9f\x9f\xe4\xb8\xad\xe6\x89\x80\xe6\x9c\x89\xe5\x8f\x98\xe9\x87\x8f\xef\xbc\x8c\xe5\xb9\xb6\xe6\x8b\xb7\xe8\xb4\x9d\xe4\xb8\x80\xe4\xbb\xbd\xe5\x9c\xa8\xe5\x87\xbd\xe6\x95\xb0\xe4\xbd\x93\xe4\xb8\xad\xe4\xbd\xbf\xe7\x94\xa8\xef\xbc\x8c\xe4\xbd\x86\xe6\x98\xaf\xe5\xaf\xb9foo\xe5\x8f\x98\xe9\x87\x8f\xe4\xbd\xbf\xe7\x94\xa8\xe5\xbc\x95\xe7\x94\xa8\n[bar] \xe6\x88\xaa\xe5\x8f\x96bar\xe5\x8f\x98\xe9\x87\x8f\xe5\xb9\xb6\xe4\xb8\x94\xe6\x8b\xb7\xe8\xb4\x9d\xe4\xb8\x80\xe4\xbb\xbd\xe5\x9c\xa8\xe5\x87\xbd\xe6\x95\xb0\xe4\xbd\x93\xe9\x87\x8d\xe4\xbd\xbf\xe7\x94\xa8\xef\xbc\x8c\xe5\x90\x8c\xe6\x97\xb6\xe4\xb8\x8d\xe6\x88\xaa\xe5\x8f\x96\xe5\x85\xb6\xe4\xbb\x96\xe5\x8f\x98\xe9\x87\x8f\n[this] \xe6\x88\xaa\xe5\x8f\x96\xe5\xbd\x93\xe5\x89\x8d\xe7\xb1\xbb\xe4\xb8\xad\xe7\x9a\x84this\xe6\x8c\x87\xe9\x92\x88\xe3\x80\x82\xe5\xa6\x82\xe6\x9e\x9c\xe5\xb7\xb2\xe7\xbb\x8f\xe4\xbd\xbf\xe7\x94\xa8\xe4\xba\x86&\xe6\x88\x96\xe8\x80\x85=\xe5\xb0\xb1\xe9\xbb\x98\xe8\xae\xa4\xe6\xb7\xbb\xe5\x8a\xa0\xe6\xad\xa4\xe9\x80\x89\xe9\xa1\xb9\xe3\x80\x82\n}*/\nint main()\n{\n    // \xe5\x9f\xba\xe7\xa1\x80\xe7\x94\xa8\xe6\xb3\x95\n    int base = 10;\n    auto add = [](int a, int b)\n    {\n        return a + b;\n    };\n    auto multiply = [base](int x)\n    {\n        return base * x;\n    };\n    add(1, 2);\n    multiply(5);\n\n    // \xe6\x8d\x95\xe8\x8e\xb7\xef\xbc\x8c\xe7\x94\xa8\xe4\xbd\x9c\xe5\x88\xa4\xe6\x96\xad\xe6\x88\x96\xe5\x8c\xb9\xe9\x85\x8d\xe6\xa8\xa1\xe5\xbc\x8f\n    std::vector<int> numbers = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};\n    auto isEven = [=](int x)\n    {\n        return x % 2 == 0;\n    };\n    auto it = std::find_if(numbers.begin(), numbers.end(), isEven);\n\n    std::function<int(int)> recursion = [&recursion](int n)\n    {\n        return n < 2 ? 1 : recursion(n - 1) + recursion(n - 2);\n    };\n}'  <<]
  comment:  [>>  b'/*lambda\xe6\x8d\x95\xe8\x8e\xb7\xef\xbc\x88\xe5\xbc\x95\xe7\x94\xa8&/\xe5\xa4\x8d\xe5\x88\xb6=\xef\xbc\x89\n[] \xe4\xb8\x8d\xe6\x88\xaa\xe5\x8f\x96\xe4\xbb\xbb\xe4\xbd\x95\xe5\x8f\x98\xe9\x87\x8f\n[&] \xe6\x88\xaa\xe5\x8f\x96\xe5\xa4\x96\xe9\x83\xa8\xe4\xbd\x9c\xe7\x94\xa8\xe5\x9f\x9f\xe4\xb8\xad\xe6\x89\x80\xe6\x9c\x89\xe5\x8f\x98\xe9\x87\x8f\xef\xbc\x8c\xe5\xb9\xb6\xe4\xbd\x9c\xe4\xb8\xba\xe5\xbc\x95\xe7\x94\xa8\xe5\x9c\xa8\xe5\x87\xbd\xe6\x95\xb0\xe4\xbd\x93\xe4\xb8\xad\xe4\xbd\xbf\xe7\x94\xa8\n[=] \xe6\x88\xaa\xe5\x8f\x96\xe5\xa4\x96\xe9\x83\xa8\xe4\xbd\x9c\xe7\x94\xa8\xe5\x9f\x9f\xe4\xb8\xad\xe6\x89\x80\xe6\x9c\x89\xe5\x8f\x98\xe9\x87\x8f\xef\xbc\x8c\xe5\xb9\xb6\xe6\x8b\xb7\xe8\xb4\x9d\xe4\xb8\x80\xe4\xbb\xbd\xe5\x9c\xa8\xe5\x87\xbd\xe6\x95\xb0\xe4\xbd\x93\xe4\xb8\xad\xe4\xbd\xbf\xe7\x94\xa8\n[=, &foo] \xe6\x88\xaa\xe5\x8f\x96\xe5\xa4\x96\xe9\x83\xa8\xe4\xbd\x9c\xe7\x94\xa8\xe5\x9f\x9f\xe4\xb8\xad\xe6\x89\x80\xe6\x9c\x89\xe5\x8f\x98\xe9\x87\x8f\xef\xbc\x8c\xe5\xb9\xb6\xe6\x8b\xb7\xe8\xb4\x9d\xe4\xb8\x80\xe4\xbb\xbd\xe5\x9c\xa8\xe5\x87\xbd\xe6\x95\xb0\xe4\xbd\x93\xe4\xb8\xad\xe4\xbd\xbf\xe7\x94\xa8\xef\xbc\x8c\xe4\xbd\x86\xe6\x98\xaf\xe5\xaf\xb9foo\xe5\x8f\x98\xe9\x87\x8f\xe4\xbd\xbf\xe7\x94\xa8\xe5\xbc\x95\xe7\x94\xa8\n[bar] \xe6\x88\xaa\xe5\x8f\x96bar\xe5\x8f\x98\xe9\x87\x8f\xe5\xb9\xb6\xe4\xb8\x94\xe6\x8b\xb7\xe8\xb4\x9d\xe4\xb8\x80\xe4\xbb\xbd\xe5\x9c\xa8\xe5\x87\xbd\xe6\x95\xb0\xe4\xbd\x93\xe9\x87\x8d\xe4\xbd\xbf\xe7\x94\xa8\xef\xbc\x8c\xe5\x90\x8c\xe6\x97\xb6\xe4\xb8\x8d\xe6\x88\xaa\xe5\x8f\x96\xe5\x85\xb6\xe4\xbb\x96\xe5\x8f\x98\xe9\x87\x8f\n[this] \xe6\x88\xaa\xe5\x8f\x96\xe5\xbd\x93\xe5\x89\x8d\xe7\xb1\xbb\xe4\xb8\xad\xe7\x9a\x84this\xe6\x8c\x87\xe9\x92\x88\xe3\x80\x82\xe5\xa6\x82\xe6\x9e\x9c\xe5\xb7\xb2\xe7\xbb\x8f\xe4\xbd\xbf\xe7\x94\xa8\xe4\xba\x86&\xe6\x88\x96\xe8\x80\x85=\xe5\xb0\xb1\xe9\xbb\x98\xe8\xae\xa4\xe6\xb7\xbb\xe5\x8a\xa0\xe6\xad\xa4\xe9\x80\x89\xe9\xa1\xb9\xe3\x80\x82\n}*/'  <<]
  function_definition:  [>>  b'int main()\n{\n    // \xe5\x9f\xba\xe7\xa1\x80\xe7\x94\xa8\xe6\xb3\x95\n    int base = 10;\n    auto add = [](int a, int b)\n    {\n        return a + b;\n    };\n    auto multiply = [base](int x)\n    {\n        return base * x;\n    };\n    add(1, 2);\n    multiply(5);\n\n    // \xe6\x8d\x95\xe8\x8e\xb7\xef\xbc\x8c\xe7\x94\xa8\xe4\xbd\x9c\xe5\x88\xa4\xe6\x96\xad\xe6\x88\x96\xe5\x8c\xb9\xe9\x85\x8d\xe6\xa8\xa1\xe5\xbc\x8f\n    std::vector<int> numbers = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};\n    auto isEven = [=](int x)\n    {\n        return x % 2 == 0;\n    };\n    auto it = std::find_if(numbers.begin(), numbers.end(), isEven);\n\n    std::function<int(int)> recursion = [&recursion](int n)\n    {\n        return n < 2 ? 1 : recursion(n - 1) + recursion(n - 2);\n    };\n}'  <<]
    primitive_type:  [>>  b'int'  <<]
    function_declarator:  [>>  b'main()'  <<]
      identifier:  [>>  b'main'  <<]
      parameter_list:  [>>  b'()'  <<]
        (
        )
    compound_statement:  [>>  b'{\n    // \xe5\x9f\xba\xe7\xa1\x80\xe7\x94\xa8\xe6\xb3\x95\n    int base = 10;\n    auto add = [](int a, int b)\n    {\n        return a + b;\n    };\n    auto multiply = [base](int x)\n    {\n        return base * x;\n    };\n    add(1, 2);\n    multiply(5);\n\n    // \xe6\x8d\x95\xe8\x8e\xb7\xef\xbc\x8c\xe7\x94\xa8\xe4\xbd\x9c\xe5\x88\xa4\xe6\x96\xad\xe6\x88\x96\xe5\x8c\xb9\xe9\x85\x8d\xe6\xa8\xa1\xe5\xbc\x8f\n    std::vector<int> numbers = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};\n    auto isEven = [=](int x)\n    {\n        return x % 2 == 0;\n    };\n    auto it = std::find_if(numbers.begin(), numbers.end(), isEven);\n\n    std::function<int(int)> recursion = [&recursion](int n)\n    {\n        return n < 2 ? 1 : recursion(n - 1) + recursion(n - 2);\n    };\n}'  <<]
      {
      comment:  [>>  b'// \xe5\x9f\xba\xe7\xa1\x80\xe7\x94\xa8\xe6\xb3\x95'  <<]
      declaration:  [>>  b'int base = 10;'  <<]
        primitive_type:  [>>  b'int'  <<]
        init_declarator:  [>>  b'base = 10'  <<]
          identifier:  [>>  b'base'  <<]
          =
          number_literal:  [>>  b'10'  <<]
        ;
      declaration:  [>>  b'auto add = [](int a, int b)\n    {\n        return a + b;\n    };'  <<]
        placeholder_type_specifier:  [>>  b'auto'  <<]
          auto:  [>>  b'auto'  <<]
        init_declarator:  [>>  b'add = [](int a, int b)\n    {\n        return a + b;\n    }'  <<]
          identifier:  [>>  b'add'  <<]
          =
          lambda_expression:  [>>  b'[](int a, int b)\n    {\n        return a + b;\n    }'  <<]
            lambda_capture_specifier:  [>>  b'[]'  <<]
              [
              ]
            abstract_function_declarator:  [>>  b'(int a, int b)'  <<]
              parameter_list:  [>>  b'(int a, int b)'  <<]
                (
                parameter_declaration:  [>>  b'int a'  <<]
                  primitive_type:  [>>  b'int'  <<]
                  identifier:  [>>  b'a'  <<]
                ,
                parameter_declaration:  [>>  b'int b'  <<]
                  primitive_type:  [>>  b'int'  <<]
                  identifier:  [>>  b'b'  <<]
                )
            compound_statement:  [>>  b'{\n        return a + b;\n    }'  <<]
              {
              return_statement:  [>>  b'return a + b;'  <<]
                return
                binary_expression:  [>>  b'a + b'  <<]
                  identifier:  [>>  b'a'  <<]
                  +
                  identifier:  [>>  b'b'  <<]
                ;
              }
        ;
      declaration:  [>>  b'auto multiply = [base](int x)\n    {\n        return base * x;\n    };'  <<]
        placeholder_type_specifier:  [>>  b'auto'  <<]
          auto:  [>>  b'auto'  <<]
        init_declarator:  [>>  b'multiply = [base](int x)\n    {\n        return base * x;\n    }'  <<]
          identifier:  [>>  b'multiply'  <<]
          =
          lambda_expression:  [>>  b'[base](int x)\n    {\n        return base * x;\n    }'  <<]
            lambda_capture_specifier:  [>>  b'[base]'  <<]
              [
              identifier:  [>>  b'base'  <<]
              ]
            abstract_function_declarator:  [>>  b'(int x)'  <<]
              parameter_list:  [>>  b'(int x)'  <<]
                (
                parameter_declaration:  [>>  b'int x'  <<]
                  primitive_type:  [>>  b'int'  <<]
                  identifier:  [>>  b'x'  <<]
                )
            compound_statement:  [>>  b'{\n        return base * x;\n    }'  <<]
              {
              return_statement:  [>>  b'return base * x;'  <<]
                return
                binary_expression:  [>>  b'base * x'  <<]
                  identifier:  [>>  b'base'  <<]
                  *
                  identifier:  [>>  b'x'  <<]
                ;
              }
        ;
      expression_statement:  [>>  b'add(1, 2);'  <<]
        call_expression:  [>>  b'add(1, 2)'  <<]
          identifier:  [>>  b'add'  <<]
          argument_list:  [>>  b'(1, 2)'  <<]
            (
            number_literal:  [>>  b'1'  <<]
            ,
            number_literal:  [>>  b'2'  <<]
            )
        ;
      expression_statement:  [>>  b'multiply(5);'  <<]
        call_expression:  [>>  b'multiply(5)'  <<]
          identifier:  [>>  b'multiply'  <<]
          argument_list:  [>>  b'(5)'  <<]
            (
            number_literal:  [>>  b'5'  <<]
            )
        ;
      comment:  [>>  b'// \xe6\x8d\x95\xe8\x8e\xb7\xef\xbc\x8c\xe7\x94\xa8\xe4\xbd\x9c\xe5\x88\xa4\xe6\x96\xad\xe6\x88\x96\xe5\x8c\xb9\xe9\x85\x8d\xe6\xa8\xa1\xe5\xbc\x8f'  <<]
      declaration:  [>>  b'std::vector<int> numbers = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};'  <<]
        qualified_identifier:  [>>  b'std::vector<int>'  <<]
          namespace_identifier:  [>>  b'std'  <<]
          ::
          template_type:  [>>  b'vector<int>'  <<]
            type_identifier:  [>>  b'vector'  <<]
            template_argument_list:  [>>  b'<int>'  <<]
              <
              type_descriptor:  [>>  b'int'  <<]
                primitive_type:  [>>  b'int'  <<]
              >
        init_declarator:  [>>  b'numbers = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}'  <<]
          identifier:  [>>  b'numbers'  <<]
          =
          initializer_list:  [>>  b'{1, 2, 3, 4, 5, 6, 7, 8, 9, 10}'  <<]
            {
            number_literal:  [>>  b'1'  <<]
            ,
            number_literal:  [>>  b'2'  <<]
            ,
            number_literal:  [>>  b'3'  <<]
            ,
            number_literal:  [>>  b'4'  <<]
            ,
            number_literal:  [>>  b'5'  <<]
            ,
            number_literal:  [>>  b'6'  <<]
            ,
            number_literal:  [>>  b'7'  <<]
            ,
            number_literal:  [>>  b'8'  <<]
            ,
            number_literal:  [>>  b'9'  <<]
            ,
            number_literal:  [>>  b'10'  <<]
            }
        ;
      declaration:  [>>  b'auto isEven = [=](int x)\n    {\n        return x % 2 == 0;\n    };'  <<]
        placeholder_type_specifier:  [>>  b'auto'  <<]
          auto:  [>>  b'auto'  <<]
        init_declarator:  [>>  b'isEven = [=](int x)\n    {\n        return x % 2 == 0;\n    }'  <<]
          identifier:  [>>  b'isEven'  <<]
          =
          lambda_expression:  [>>  b'[=](int x)\n    {\n        return x % 2 == 0;\n    }'  <<]
            lambda_capture_specifier:  [>>  b'[=]'  <<]
              [
              lambda_default_capture:  [>>  b'='  <<]
                =
              ]
            abstract_function_declarator:  [>>  b'(int x)'  <<]
              parameter_list:  [>>  b'(int x)'  <<]
                (
                parameter_declaration:  [>>  b'int x'  <<]
                  primitive_type:  [>>  b'int'  <<]
                  identifier:  [>>  b'x'  <<]
                )
            compound_statement:  [>>  b'{\n        return x % 2 == 0;\n    }'  <<]
              {
              return_statement:  [>>  b'return x % 2 == 0;'  <<]
                return
                binary_expression:  [>>  b'x % 2 == 0'  <<]
                  binary_expression:  [>>  b'x % 2'  <<]
                    identifier:  [>>  b'x'  <<]
                    %
                    number_literal:  [>>  b'2'  <<]
                  ==
                  number_literal:  [>>  b'0'  <<]
                ;
              }
        ;
      declaration:  [>>  b'auto it = std::find_if(numbers.begin(), numbers.end(), isEven);'  <<]
        placeholder_type_specifier:  [>>  b'auto'  <<]
          auto:  [>>  b'auto'  <<]
        init_declarator:  [>>  b'it = std::find_if(numbers.begin(), numbers.end(), isEven)'  <<]
          identifier:  [>>  b'it'  <<]
          =
          call_expression:  [>>  b'std::find_if(numbers.begin(), numbers.end(), isEven)'  <<]
            qualified_identifier:  [>>  b'std::find_if'  <<]
              namespace_identifier:  [>>  b'std'  <<]
              ::
              identifier:  [>>  b'find_if'  <<]
            argument_list:  [>>  b'(numbers.begin(), numbers.end(), isEven)'  <<]
              (
              call_expression:  [>>  b'numbers.begin()'  <<]
                field_expression:  [>>  b'numbers.begin'  <<]
                  identifier:  [>>  b'numbers'  <<]
                  .
                  field_identifier:  [>>  b'begin'  <<]
                argument_list:  [>>  b'()'  <<]
                  (
                  )
              ,
              call_expression:  [>>  b'numbers.end()'  <<]
                field_expression:  [>>  b'numbers.end'  <<]
                  identifier:  [>>  b'numbers'  <<]
                  .
                  field_identifier:  [>>  b'end'  <<]
                argument_list:  [>>  b'()'  <<]
                  (
                  )
              ,
              identifier:  [>>  b'isEven'  <<]
              )
        ;
      declaration:  [>>  b'std::function<int(int)> recursion = [&recursion](int n)\n    {\n        return n < 2 ? 1 : recursion(n - 1) + recursion(n - 2);\n    };'  <<]
        qualified_identifier:  [>>  b'std::function<int(int)>'  <<]
          namespace_identifier:  [>>  b'std'  <<]
          ::
          template_type:  [>>  b'function<int(int)>'  <<]
            type_identifier:  [>>  b'function'  <<]
            template_argument_list:  [>>  b'<int(int)>'  <<]
              <
              type_descriptor:  [>>  b'int(int)'  <<]
                primitive_type:  [>>  b'int'  <<]
                abstract_function_declarator:  [>>  b'(int)'  <<]
                  parameter_list:  [>>  b'(int)'  <<]
                    (
                    parameter_declaration:  [>>  b'int'  <<]
                      primitive_type:  [>>  b'int'  <<]
                    )
              >
        init_declarator:  [>>  b'recursion = [&recursion](int n)\n    {\n        return n < 2 ? 1 : recursion(n - 1) + recursion(n - 2);\n    }'  <<]
          identifier:  [>>  b'recursion'  <<]
          =
          lambda_expression:  [>>  b'[&recursion](int n)\n    {\n        return n < 2 ? 1 : recursion(n - 1) + recursion(n - 2);\n    }'  <<]
            lambda_capture_specifier:  [>>  b'[&recursion]'  <<]
              [
              pointer_expression:  [>>  b'&recursion'  <<]
                &
                identifier:  [>>  b'recursion'  <<]
              ]
            abstract_function_declarator:  [>>  b'(int n)'  <<]
              parameter_list:  [>>  b'(int n)'  <<]
                (
                parameter_declaration:  [>>  b'int n'  <<]
                  primitive_type:  [>>  b'int'  <<]
                  identifier:  [>>  b'n'  <<]
                )
            compound_statement:  [>>  b'{\n        return n < 2 ? 1 : recursion(n - 1) + recursion(n - 2);\n    }'  <<]
              {
              return_statement:  [>>  b'return n < 2 ? 1 : recursion(n - 1) + recursion(n - 2);'  <<]
                return
                conditional_expression:  [>>  b'n < 2 ? 1 : recursion(n - 1) + recursion(n - 2)'  <<]
                  binary_expression:  [>>  b'n < 2'  <<]
                    identifier:  [>>  b'n'  <<]
                    <
                    number_literal:  [>>  b'2'  <<]
                  ?
                  number_literal:  [>>  b'1'  <<]
                  :
                  binary_expression:  [>>  b'recursion(n - 1) + recursion(n - 2)'  <<]
                    call_expression:  [>>  b'recursion(n - 1)'  <<]
                      identifier:  [>>  b'recursion'  <<]
                      argument_list:  [>>  b'(n - 1)'  <<]
                        (
                        binary_expression:  [>>  b'n - 1'  <<]
                          identifier:  [>>  b'n'  <<]
                          -
                          number_literal:  [>>  b'1'  <<]
                        )
                    +
                    call_expression:  [>>  b'recursion(n - 2)'  <<]
                      identifier:  [>>  b'recursion'  <<]
                      argument_list:  [>>  b'(n - 2)'  <<]
                        (
                        binary_expression:  [>>  b'n - 2'  <<]
                          identifier:  [>>  b'n'  <<]
                          -
                          number_literal:  [>>  b'2'  <<]
                        )
                ;
              }
        ;
      }
(translation_unit (comment) (function_definition type: (primitive_type) declarator: (function_declarator declarator: (identifier) parameters: (parameter_list)) body: (compound_statement (comment) (declaration type: (primitive_type) declarator: (init_declarator declarator: (identifier) value: (number_literal))) (declaration type: (placeholder_type_specifier (auto)) declarator: (init_declarator declarator: (identifier) value: (lambda_expression captures: (lambda_capture_specifier) declarator: (abstract_function_declarator parameters: (parameter_list (parameter_declaration type: (primitive_type) declarator: (identifier)) (parameter_declaration type: (primitive_type) declarator: (identifier)))) body: (compound_statement (return_statement (binary_expression left: (identifier) right: (identifier))))))) (declaration type: (placeholder_type_specifier (auto)) declarator: (init_declarator declarator: (identifier) value: (lambda_expression captures: (lambda_capture_specifier (identifier)) declarator: (abstract_function_declarator parameters: (parameter_list (parameter_declaration type: (primitive_type) declarator: (identifier)))) body: (compound_statement (return_statement (binary_expression left: (identifier) right: (identifier))))))) (expression_statement (call_expression function: (identifier) arguments: (argument_list (number_literal) (number_literal)))) (expression_statement (call_expression function: (identifier) arguments: (argument_list (number_literal)))) (comment) (declaration type: (qualified_identifier scope: (namespace_identifier) name: (template_type name: (type_identifier) arguments: (template_argument_list (type_descriptor type: (primitive_type))))) declarator: (init_declarator declarator: (identifier) value: (initializer_list (number_literal) (number_literal) (number_literal) (number_literal) (number_literal) (number_literal) (number_literal) (number_literal) (number_literal) (number_literal)))) (declaration type: (placeholder_type_specifier (auto)) declarator: (init_declarator declarator: (identifier) value: (lambda_expression captures: (lambda_capture_specifier (lambda_default_capture)) declarator: (abstract_function_declarator parameters: (parameter_list (parameter_declaration type: (primitive_type) declarator: (identifier)))) body: (compound_statement (return_statement (binary_expression left: (binary_expression left: (identifier) right: (number_literal)) right: (number_literal))))))) (declaration type: (placeholder_type_specifier (auto)) declarator: (init_declarator declarator: (identifier) value: (call_expression function: (qualified_identifier scope: (namespace_identifier) name: (identifier)) arguments: (argument_list (call_expression function: (field_expression argument: (identifier) field: (field_identifier)) arguments: (argument_list)) (call_expression function: (field_expression argument: (identifier) field: (field_identifier)) arguments: (argument_list)) (identifier))))) (declaration type: (qualified_identifier scope: (namespace_identifier) name: (template_type name: (type_identifier) arguments: (template_argument_list (type_descriptor type: (primitive_type) declarator: (abstract_function_declarator parameters: (parameter_list (parameter_declaration type: (primitive_type)))))))) declarator: (init_declarator declarator: (identifier) value: (lambda_expression captures: (lambda_capture_specifier (pointer_expression argument: (identifier))) declarator: (abstract_function_declarator parameters: (parameter_list (parameter_declaration type: (primitive_type) declarator: (identifier)))) body: (compound_statement (return_statement (conditional_expression condition: (binary_expression left: (identifier) right: (number_literal)) consequence: (number_literal) alternative: (binary_expression left: (call_expression function: (identifier) arguments: (argument_list (binary_expression left: (identifier) right: (number_literal)))) right: (call_expression function: (identifier) arguments: (argument_list (binary_expression left: (identifier) right: (number_literal))))))))))))))
