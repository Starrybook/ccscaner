translation_unit:  [>>  b'/*\xe8\xbf\x90\xe7\xae\x97\xe7\xac\xa6 -\xe4\xb8\x8b\xe5\x88\x97\xe8\xbf\x90\xe7\xae\x97\xe7\xac\xa6\xe4\xb9\x8b\xe4\xb8\x80\xef\xbc\x9a + - * / % ^ & | ~ ! = < > += -= *= /= %= ^= &= |= << >> >>= <<= == != <= >= <=> (C++20 \xe8\xb5\xb7) && || ++ -- , ->* -> ( ) [ ]*/\n#include <iostream>\nclass Complex\n{\nprivate:\n    double real;\n    double imag;\n\npublic:\n    Complex(double a, double b) : real(a), imag(b) {}\n    Complex operator+(const Complex &other) const\n    {\n        Complex result(0, 0);\n        result.real = real + other.real;\n        result.imag = imag + other.imag;\n        return result;\n    }\n    friend std::ostream &operator<<(std::ostream &os, const Complex &complex)\n    {\n        os << "X: " << complex.real << ", Y: " << complex.imag;\n        return os;\n    }\n    double operator()(double x) const\n    {\n        return real * x + imag;\n    }\n};\nstruct X\n{\n    X &operator++() // \xe5\x89\x8d\xe7\xbc\x80\xe8\x87\xaa\xe5\xa2\x9e ++oprand\n    {\n        // \xe5\xae\x9e\xe9\x99\x85\xe4\xb8\x8a\xe7\x9a\x84\xe8\x87\xaa\xe5\xa2\x9e\xe5\x9c\xa8\xe6\xad\xa4\xe8\xbf\x9b\xe8\xa1\x8c\n        return *this; // \xe4\xbb\xa5\xe5\xbc\x95\xe7\x94\xa8\xe8\xbf\x94\xe5\x9b\x9e\xe6\x96\xb0\xe5\x80\xbc\n    }\n    X operator++(int) // \xe5\x90\x8e\xe7\xbc\x80\xe8\x87\xaa\xe5\xa2\x9eoprand++\n    {\n        X old = *this; // \xe5\xa4\x8d\xe5\x88\xb6\xe6\x97\xa7\xe5\x80\xbc\n        operator++();  // \xe5\x89\x8d\xe7\xbc\x80\xe8\x87\xaa\xe5\xa2\x9e\n        return old;    // \xe8\xbf\x94\xe5\x9b\x9e\xe6\x97\xa7\xe5\x80\xbc\n    }\n};\nint main()\n{\n    Complex cplx(3.14, 4.3);\n    std::cout << "Class details: " << cplx << std::endl; // Calls the overloaded \'<<\' operator\n    double res = cplx(0);\n    return 0;\n}\n'  <<]
  comment:  [>>  b'/*\xe8\xbf\x90\xe7\xae\x97\xe7\xac\xa6 -\xe4\xb8\x8b\xe5\x88\x97\xe8\xbf\x90\xe7\xae\x97\xe7\xac\xa6\xe4\xb9\x8b\xe4\xb8\x80\xef\xbc\x9a + - * / % ^ & | ~ ! = < > += -= *= /= %= ^= &= |= << >> >>= <<= == != <= >= <=> (C++20 \xe8\xb5\xb7) && || ++ -- , ->* -> ( ) [ ]*/'  <<]
  preproc_include:  [>>  b'#include <iostream>\n'  <<]
    #include
    system_lib_string:  [>>  b'<iostream>'  <<]
  class_specifier:  [>>  b'class Complex\n{\nprivate:\n    double real;\n    double imag;\n\npublic:\n    Complex(double a, double b) : real(a), imag(b) {}\n    Complex operator+(const Complex &other) const\n    {\n        Complex result(0, 0);\n        result.real = real + other.real;\n        result.imag = imag + other.imag;\n        return result;\n    }\n    friend std::ostream &operator<<(std::ostream &os, const Complex &complex)\n    {\n        os << "X: " << complex.real << ", Y: " << complex.imag;\n        return os;\n    }\n    double operator()(double x) const\n    {\n        return real * x + imag;\n    }\n}'  <<]
    class
    type_identifier:  [>>  b'Complex'  <<]
    field_declaration_list:  [>>  b'{\nprivate:\n    double real;\n    double imag;\n\npublic:\n    Complex(double a, double b) : real(a), imag(b) {}\n    Complex operator+(const Complex &other) const\n    {\n        Complex result(0, 0);\n        result.real = real + other.real;\n        result.imag = imag + other.imag;\n        return result;\n    }\n    friend std::ostream &operator<<(std::ostream &os, const Complex &complex)\n    {\n        os << "X: " << complex.real << ", Y: " << complex.imag;\n        return os;\n    }\n    double operator()(double x) const\n    {\n        return real * x + imag;\n    }\n}'  <<]
      {
      access_specifier:  [>>  b'private'  <<]
        private
      :
      field_declaration:  [>>  b'double real;'  <<]
        primitive_type:  [>>  b'double'  <<]
        field_identifier:  [>>  b'real'  <<]
        ;
      field_declaration:  [>>  b'double imag;'  <<]
        primitive_type:  [>>  b'double'  <<]
        field_identifier:  [>>  b'imag'  <<]
        ;
      access_specifier:  [>>  b'public'  <<]
        public
      :
      function_definition:  [>>  b'Complex(double a, double b) : real(a), imag(b) {}'  <<]
        function_declarator:  [>>  b'Complex(double a, double b)'  <<]
          identifier:  [>>  b'Complex'  <<]
          parameter_list:  [>>  b'(double a, double b)'  <<]
            (
            parameter_declaration:  [>>  b'double a'  <<]
              primitive_type:  [>>  b'double'  <<]
              identifier:  [>>  b'a'  <<]
            ,
            parameter_declaration:  [>>  b'double b'  <<]
              primitive_type:  [>>  b'double'  <<]
              identifier:  [>>  b'b'  <<]
            )
        field_initializer_list:  [>>  b': real(a), imag(b)'  <<]
          :
          field_initializer:  [>>  b'real(a)'  <<]
            field_identifier:  [>>  b'real'  <<]
            argument_list:  [>>  b'(a)'  <<]
              (
              identifier:  [>>  b'a'  <<]
              )
          ,
          field_initializer:  [>>  b'imag(b)'  <<]
            field_identifier:  [>>  b'imag'  <<]
            argument_list:  [>>  b'(b)'  <<]
              (
              identifier:  [>>  b'b'  <<]
              )
        compound_statement:  [>>  b'{}'  <<]
          {
          }
      function_definition:  [>>  b'Complex operator+(const Complex &other) const\n    {\n        Complex result(0, 0);\n        result.real = real + other.real;\n        result.imag = imag + other.imag;\n        return result;\n    }'  <<]
        type_identifier:  [>>  b'Complex'  <<]
        function_declarator:  [>>  b'operator+(const Complex &other) const'  <<]
          operator_name:  [>>  b'operator+'  <<]
            operator
            +
          parameter_list:  [>>  b'(const Complex &other)'  <<]
            (
            parameter_declaration:  [>>  b'const Complex &other'  <<]
              type_qualifier:  [>>  b'const'  <<]
                const
              type_identifier:  [>>  b'Complex'  <<]
              reference_declarator:  [>>  b'&other'  <<]
                &
                identifier:  [>>  b'other'  <<]
            )
          type_qualifier:  [>>  b'const'  <<]
            const
        compound_statement:  [>>  b'{\n        Complex result(0, 0);\n        result.real = real + other.real;\n        result.imag = imag + other.imag;\n        return result;\n    }'  <<]
          {
          declaration:  [>>  b'Complex result(0, 0);'  <<]
            type_identifier:  [>>  b'Complex'  <<]
            init_declarator:  [>>  b'result(0, 0)'  <<]
              identifier:  [>>  b'result'  <<]
              argument_list:  [>>  b'(0, 0)'  <<]
                (
                number_literal:  [>>  b'0'  <<]
                ,
                number_literal:  [>>  b'0'  <<]
                )
            ;
          expression_statement:  [>>  b'result.real = real + other.real;'  <<]
            assignment_expression:  [>>  b'result.real = real + other.real'  <<]
              field_expression:  [>>  b'result.real'  <<]
                identifier:  [>>  b'result'  <<]
                .
                field_identifier:  [>>  b'real'  <<]
              =
              binary_expression:  [>>  b'real + other.real'  <<]
                identifier:  [>>  b'real'  <<]
                +
                field_expression:  [>>  b'other.real'  <<]
                  identifier:  [>>  b'other'  <<]
                  .
                  field_identifier:  [>>  b'real'  <<]
            ;
          expression_statement:  [>>  b'result.imag = imag + other.imag;'  <<]
            assignment_expression:  [>>  b'result.imag = imag + other.imag'  <<]
              field_expression:  [>>  b'result.imag'  <<]
                identifier:  [>>  b'result'  <<]
                .
                field_identifier:  [>>  b'imag'  <<]
              =
              binary_expression:  [>>  b'imag + other.imag'  <<]
                identifier:  [>>  b'imag'  <<]
                +
                field_expression:  [>>  b'other.imag'  <<]
                  identifier:  [>>  b'other'  <<]
                  .
                  field_identifier:  [>>  b'imag'  <<]
            ;
          return_statement:  [>>  b'return result;'  <<]
            return
            identifier:  [>>  b'result'  <<]
            ;
          }
      friend_declaration:  [>>  b'friend std::ostream &operator<<(std::ostream &os, const Complex &complex)\n    {\n        os << "X: " << complex.real << ", Y: " << complex.imag;\n        return os;\n    }'  <<]
        friend
        function_definition:  [>>  b'std::ostream &operator<<(std::ostream &os, const Complex &complex)\n    {\n        os << "X: " << complex.real << ", Y: " << complex.imag;\n        return os;\n    }'  <<]
          qualified_identifier:  [>>  b'std::ostream'  <<]
            namespace_identifier:  [>>  b'std'  <<]
            ::
            type_identifier:  [>>  b'ostream'  <<]
          reference_declarator:  [>>  b'&operator<<(std::ostream &os, const Complex &complex)'  <<]
            &
            function_declarator:  [>>  b'operator<<(std::ostream &os, const Complex &complex)'  <<]
              operator_name:  [>>  b'operator<<'  <<]
                operator
                <<
              parameter_list:  [>>  b'(std::ostream &os, const Complex &complex)'  <<]
                (
                parameter_declaration:  [>>  b'std::ostream &os'  <<]
                  qualified_identifier:  [>>  b'std::ostream'  <<]
                    namespace_identifier:  [>>  b'std'  <<]
                    ::
                    type_identifier:  [>>  b'ostream'  <<]
                  reference_declarator:  [>>  b'&os'  <<]
                    &
                    identifier:  [>>  b'os'  <<]
                ,
                parameter_declaration:  [>>  b'const Complex &complex'  <<]
                  type_qualifier:  [>>  b'const'  <<]
                    const
                  type_identifier:  [>>  b'Complex'  <<]
                  reference_declarator:  [>>  b'&complex'  <<]
                    &
                    identifier:  [>>  b'complex'  <<]
                )
          compound_statement:  [>>  b'{\n        os << "X: " << complex.real << ", Y: " << complex.imag;\n        return os;\n    }'  <<]
            {
            expression_statement:  [>>  b'os << "X: " << complex.real << ", Y: " << complex.imag;'  <<]
              binary_expression:  [>>  b'os << "X: " << complex.real << ", Y: " << complex.imag'  <<]
                binary_expression:  [>>  b'os << "X: " << complex.real << ", Y: "'  <<]
                  binary_expression:  [>>  b'os << "X: " << complex.real'  <<]
                    binary_expression:  [>>  b'os << "X: "'  <<]
                      identifier:  [>>  b'os'  <<]
                      <<
                      string_literal:  [>>  b'"X: "'  <<]
                        "
                        string_content:  [>>  b'X: '  <<]
                        "
                    <<
                    field_expression:  [>>  b'complex.real'  <<]
                      identifier:  [>>  b'complex'  <<]
                      .
                      field_identifier:  [>>  b'real'  <<]
                  <<
                  string_literal:  [>>  b'", Y: "'  <<]
                    "
                    string_content:  [>>  b', Y: '  <<]
                    "
                <<
                field_expression:  [>>  b'complex.imag'  <<]
                  identifier:  [>>  b'complex'  <<]
                  .
                  field_identifier:  [>>  b'imag'  <<]
              ;
            return_statement:  [>>  b'return os;'  <<]
              return
              identifier:  [>>  b'os'  <<]
              ;
            }
      function_definition:  [>>  b'double operator()(double x) const\n    {\n        return real * x + imag;\n    }'  <<]
        primitive_type:  [>>  b'double'  <<]
        function_declarator:  [>>  b'operator()(double x) const'  <<]
          operator_name:  [>>  b'operator()'  <<]
            operator
            ()
          parameter_list:  [>>  b'(double x)'  <<]
            (
            parameter_declaration:  [>>  b'double x'  <<]
              primitive_type:  [>>  b'double'  <<]
              identifier:  [>>  b'x'  <<]
            )
          type_qualifier:  [>>  b'const'  <<]
            const
        compound_statement:  [>>  b'{\n        return real * x + imag;\n    }'  <<]
          {
          return_statement:  [>>  b'return real * x + imag;'  <<]
            return
            binary_expression:  [>>  b'real * x + imag'  <<]
              binary_expression:  [>>  b'real * x'  <<]
                identifier:  [>>  b'real'  <<]
                *
                identifier:  [>>  b'x'  <<]
              +
              identifier:  [>>  b'imag'  <<]
            ;
          }
      }
  ;
  struct_specifier:  [>>  b'struct X\n{\n    X &operator++() // \xe5\x89\x8d\xe7\xbc\x80\xe8\x87\xaa\xe5\xa2\x9e ++oprand\n    {\n        // \xe5\xae\x9e\xe9\x99\x85\xe4\xb8\x8a\xe7\x9a\x84\xe8\x87\xaa\xe5\xa2\x9e\xe5\x9c\xa8\xe6\xad\xa4\xe8\xbf\x9b\xe8\xa1\x8c\n        return *this; // \xe4\xbb\xa5\xe5\xbc\x95\xe7\x94\xa8\xe8\xbf\x94\xe5\x9b\x9e\xe6\x96\xb0\xe5\x80\xbc\n    }\n    X operator++(int) // \xe5\x90\x8e\xe7\xbc\x80\xe8\x87\xaa\xe5\xa2\x9eoprand++\n    {\n        X old = *this; // \xe5\xa4\x8d\xe5\x88\xb6\xe6\x97\xa7\xe5\x80\xbc\n        operator++();  // \xe5\x89\x8d\xe7\xbc\x80\xe8\x87\xaa\xe5\xa2\x9e\n        return old;    // \xe8\xbf\x94\xe5\x9b\x9e\xe6\x97\xa7\xe5\x80\xbc\n    }\n}'  <<]
    struct
    type_identifier:  [>>  b'X'  <<]
    field_declaration_list:  [>>  b'{\n    X &operator++() // \xe5\x89\x8d\xe7\xbc\x80\xe8\x87\xaa\xe5\xa2\x9e ++oprand\n    {\n        // \xe5\xae\x9e\xe9\x99\x85\xe4\xb8\x8a\xe7\x9a\x84\xe8\x87\xaa\xe5\xa2\x9e\xe5\x9c\xa8\xe6\xad\xa4\xe8\xbf\x9b\xe8\xa1\x8c\n        return *this; // \xe4\xbb\xa5\xe5\xbc\x95\xe7\x94\xa8\xe8\xbf\x94\xe5\x9b\x9e\xe6\x96\xb0\xe5\x80\xbc\n    }\n    X operator++(int) // \xe5\x90\x8e\xe7\xbc\x80\xe8\x87\xaa\xe5\xa2\x9eoprand++\n    {\n        X old = *this; // \xe5\xa4\x8d\xe5\x88\xb6\xe6\x97\xa7\xe5\x80\xbc\n        operator++();  // \xe5\x89\x8d\xe7\xbc\x80\xe8\x87\xaa\xe5\xa2\x9e\n        return old;    // \xe8\xbf\x94\xe5\x9b\x9e\xe6\x97\xa7\xe5\x80\xbc\n    }\n}'  <<]
      {
      function_definition:  [>>  b'X &operator++() // \xe5\x89\x8d\xe7\xbc\x80\xe8\x87\xaa\xe5\xa2\x9e ++oprand\n    {\n        // \xe5\xae\x9e\xe9\x99\x85\xe4\xb8\x8a\xe7\x9a\x84\xe8\x87\xaa\xe5\xa2\x9e\xe5\x9c\xa8\xe6\xad\xa4\xe8\xbf\x9b\xe8\xa1\x8c\n        return *this; // \xe4\xbb\xa5\xe5\xbc\x95\xe7\x94\xa8\xe8\xbf\x94\xe5\x9b\x9e\xe6\x96\xb0\xe5\x80\xbc\n    }'  <<]
        type_identifier:  [>>  b'X'  <<]
        reference_declarator:  [>>  b'&operator++()'  <<]
          &
          function_declarator:  [>>  b'operator++()'  <<]
            operator_name:  [>>  b'operator++'  <<]
              operator
              ++
            parameter_list:  [>>  b'()'  <<]
              (
              )
        comment:  [>>  b'// \xe5\x89\x8d\xe7\xbc\x80\xe8\x87\xaa\xe5\xa2\x9e ++oprand'  <<]
        compound_statement:  [>>  b'{\n        // \xe5\xae\x9e\xe9\x99\x85\xe4\xb8\x8a\xe7\x9a\x84\xe8\x87\xaa\xe5\xa2\x9e\xe5\x9c\xa8\xe6\xad\xa4\xe8\xbf\x9b\xe8\xa1\x8c\n        return *this; // \xe4\xbb\xa5\xe5\xbc\x95\xe7\x94\xa8\xe8\xbf\x94\xe5\x9b\x9e\xe6\x96\xb0\xe5\x80\xbc\n    }'  <<]
          {
          comment:  [>>  b'// \xe5\xae\x9e\xe9\x99\x85\xe4\xb8\x8a\xe7\x9a\x84\xe8\x87\xaa\xe5\xa2\x9e\xe5\x9c\xa8\xe6\xad\xa4\xe8\xbf\x9b\xe8\xa1\x8c'  <<]
          return_statement:  [>>  b'return *this;'  <<]
            return
            pointer_expression:  [>>  b'*this'  <<]
              *
              this:  [>>  b'this'  <<]
            ;
          comment:  [>>  b'// \xe4\xbb\xa5\xe5\xbc\x95\xe7\x94\xa8\xe8\xbf\x94\xe5\x9b\x9e\xe6\x96\xb0\xe5\x80\xbc'  <<]
          }
      function_definition:  [>>  b'X operator++(int) // \xe5\x90\x8e\xe7\xbc\x80\xe8\x87\xaa\xe5\xa2\x9eoprand++\n    {\n        X old = *this; // \xe5\xa4\x8d\xe5\x88\xb6\xe6\x97\xa7\xe5\x80\xbc\n        operator++();  // \xe5\x89\x8d\xe7\xbc\x80\xe8\x87\xaa\xe5\xa2\x9e\n        return old;    // \xe8\xbf\x94\xe5\x9b\x9e\xe6\x97\xa7\xe5\x80\xbc\n    }'  <<]
        type_identifier:  [>>  b'X'  <<]
        function_declarator:  [>>  b'operator++(int)'  <<]
          operator_name:  [>>  b'operator++'  <<]
            operator
            ++
          parameter_list:  [>>  b'(int)'  <<]
            (
            parameter_declaration:  [>>  b'int'  <<]
              primitive_type:  [>>  b'int'  <<]
            )
        comment:  [>>  b'// \xe5\x90\x8e\xe7\xbc\x80\xe8\x87\xaa\xe5\xa2\x9eoprand++'  <<]
        compound_statement:  [>>  b'{\n        X old = *this; // \xe5\xa4\x8d\xe5\x88\xb6\xe6\x97\xa7\xe5\x80\xbc\n        operator++();  // \xe5\x89\x8d\xe7\xbc\x80\xe8\x87\xaa\xe5\xa2\x9e\n        return old;    // \xe8\xbf\x94\xe5\x9b\x9e\xe6\x97\xa7\xe5\x80\xbc\n    }'  <<]
          {
          declaration:  [>>  b'X old = *this;'  <<]
            type_identifier:  [>>  b'X'  <<]
            init_declarator:  [>>  b'old = *this'  <<]
              identifier:  [>>  b'old'  <<]
              =
              pointer_expression:  [>>  b'*this'  <<]
                *
                this:  [>>  b'this'  <<]
            ;
          comment:  [>>  b'// \xe5\xa4\x8d\xe5\x88\xb6\xe6\x97\xa7\xe5\x80\xbc'  <<]
          ERROR:  [>>  b'operator++()'  <<]
            function_declarator:  [>>  b'operator++()'  <<]
              operator_name:  [>>  b'operator++'  <<]
                operator
                ++
              parameter_list:  [>>  b'()'  <<]
                (
                )
          expression_statement:  [>>  b';'  <<]
            ;
          comment:  [>>  b'// \xe5\x89\x8d\xe7\xbc\x80\xe8\x87\xaa\xe5\xa2\x9e'  <<]
          return_statement:  [>>  b'return old;'  <<]
            return
            identifier:  [>>  b'old'  <<]
            ;
          comment:  [>>  b'// \xe8\xbf\x94\xe5\x9b\x9e\xe6\x97\xa7\xe5\x80\xbc'  <<]
          }
      }
  ;
  function_definition:  [>>  b'int main()\n{\n    Complex cplx(3.14, 4.3);\n    std::cout << "Class details: " << cplx << std::endl; // Calls the overloaded \'<<\' operator\n    double res = cplx(0);\n    return 0;\n}'  <<]
    primitive_type:  [>>  b'int'  <<]
    function_declarator:  [>>  b'main()'  <<]
      identifier:  [>>  b'main'  <<]
      parameter_list:  [>>  b'()'  <<]
        (
        )
    compound_statement:  [>>  b'{\n    Complex cplx(3.14, 4.3);\n    std::cout << "Class details: " << cplx << std::endl; // Calls the overloaded \'<<\' operator\n    double res = cplx(0);\n    return 0;\n}'  <<]
      {
      declaration:  [>>  b'Complex cplx(3.14, 4.3);'  <<]
        type_identifier:  [>>  b'Complex'  <<]
        init_declarator:  [>>  b'cplx(3.14, 4.3)'  <<]
          identifier:  [>>  b'cplx'  <<]
          argument_list:  [>>  b'(3.14, 4.3)'  <<]
            (
            number_literal:  [>>  b'3.14'  <<]
            ,
            number_literal:  [>>  b'4.3'  <<]
            )
        ;
      expression_statement:  [>>  b'std::cout << "Class details: " << cplx << std::endl;'  <<]
        binary_expression:  [>>  b'std::cout << "Class details: " << cplx << std::endl'  <<]
          binary_expression:  [>>  b'std::cout << "Class details: " << cplx'  <<]
            binary_expression:  [>>  b'std::cout << "Class details: "'  <<]
              qualified_identifier:  [>>  b'std::cout'  <<]
                namespace_identifier:  [>>  b'std'  <<]
                ::
                identifier:  [>>  b'cout'  <<]
              <<
              string_literal:  [>>  b'"Class details: "'  <<]
                "
                string_content:  [>>  b'Class details: '  <<]
                "
            <<
            identifier:  [>>  b'cplx'  <<]
          <<
          qualified_identifier:  [>>  b'std::endl'  <<]
            namespace_identifier:  [>>  b'std'  <<]
            ::
            identifier:  [>>  b'endl'  <<]
        ;
      comment:  [>>  b"// Calls the overloaded '<<' operator"  <<]
      declaration:  [>>  b'double res = cplx(0);'  <<]
        primitive_type:  [>>  b'double'  <<]
        init_declarator:  [>>  b'res = cplx(0)'  <<]
          identifier:  [>>  b'res'  <<]
          =
          call_expression:  [>>  b'cplx(0)'  <<]
            identifier:  [>>  b'cplx'  <<]
            argument_list:  [>>  b'(0)'  <<]
              (
              number_literal:  [>>  b'0'  <<]
              )
        ;
      return_statement:  [>>  b'return 0;'  <<]
        return
        number_literal:  [>>  b'0'  <<]
        ;
      }
(translation_unit (comment) (preproc_include path: (system_lib_string)) (class_specifier name: (type_identifier) body: (field_declaration_list (access_specifier) (field_declaration type: (primitive_type) declarator: (field_identifier)) (field_declaration type: (primitive_type) declarator: (field_identifier)) (access_specifier) (function_definition declarator: (function_declarator declarator: (identifier) parameters: (parameter_list (parameter_declaration type: (primitive_type) declarator: (identifier)) (parameter_declaration type: (primitive_type) declarator: (identifier)))) (field_initializer_list (field_initializer (field_identifier) (argument_list (identifier))) (field_initializer (field_identifier) (argument_list (identifier)))) body: (compound_statement)) (function_definition type: (type_identifier) declarator: (function_declarator declarator: (operator_name) parameters: (parameter_list (parameter_declaration (type_qualifier) type: (type_identifier) declarator: (reference_declarator (identifier)))) (type_qualifier)) body: (compound_statement (declaration type: (type_identifier) declarator: (init_declarator declarator: (identifier) value: (argument_list (number_literal) (number_literal)))) (expression_statement (assignment_expression left: (field_expression argument: (identifier) field: (field_identifier)) right: (binary_expression left: (identifier) right: (field_expression argument: (identifier) field: (field_identifier))))) (expression_statement (assignment_expression left: (field_expression argument: (identifier) field: (field_identifier)) right: (binary_expression left: (identifier) right: (field_expression argument: (identifier) field: (field_identifier))))) (return_statement (identifier)))) (friend_declaration (function_definition type: (qualified_identifier scope: (namespace_identifier) name: (type_identifier)) declarator: (reference_declarator (function_declarator declarator: (operator_name) parameters: (parameter_list (parameter_declaration type: (qualified_identifier scope: (namespace_identifier) name: (type_identifier)) declarator: (reference_declarator (identifier))) (parameter_declaration (type_qualifier) type: (type_identifier) declarator: (reference_declarator (identifier)))))) body: (compound_statement (expression_statement (binary_expression left: (binary_expression left: (binary_expression left: (binary_expression left: (identifier) right: (string_literal (string_content))) right: (field_expression argument: (identifier) field: (field_identifier))) right: (string_literal (string_content))) right: (field_expression argument: (identifier) field: (field_identifier)))) (return_statement (identifier))))) (function_definition type: (primitive_type) declarator: (function_declarator declarator: (operator_name) parameters: (parameter_list (parameter_declaration type: (primitive_type) declarator: (identifier))) (type_qualifier)) body: (compound_statement (return_statement (binary_expression left: (binary_expression left: (identifier) right: (identifier)) right: (identifier))))))) (struct_specifier name: (type_identifier) body: (field_declaration_list (function_definition type: (type_identifier) declarator: (reference_declarator (function_declarator declarator: (operator_name) parameters: (parameter_list))) (comment) body: (compound_statement (comment) (return_statement (pointer_expression argument: (this))) (comment))) (function_definition type: (type_identifier) declarator: (function_declarator declarator: (operator_name) parameters: (parameter_list (parameter_declaration type: (primitive_type)))) (comment) body: (compound_statement (declaration type: (type_identifier) declarator: (init_declarator declarator: (identifier) value: (pointer_expression argument: (this)))) (comment) (ERROR (function_declarator declarator: (operator_name) parameters: (parameter_list))) (expression_statement) (comment) (return_statement (identifier)) (comment))))) (function_definition type: (primitive_type) declarator: (function_declarator declarator: (identifier) parameters: (parameter_list)) body: (compound_statement (declaration type: (type_identifier) declarator: (init_declarator declarator: (identifier) value: (argument_list (number_literal) (number_literal)))) (expression_statement (binary_expression left: (binary_expression left: (binary_expression left: (qualified_identifier scope: (namespace_identifier) name: (identifier)) right: (string_literal (string_content))) right: (identifier)) right: (qualified_identifier scope: (namespace_identifier) name: (identifier)))) (comment) (declaration type: (primitive_type) declarator: (init_declarator declarator: (identifier) value: (call_expression function: (identifier) arguments: (argument_list (number_literal))))) (return_statement (number_literal)))))
