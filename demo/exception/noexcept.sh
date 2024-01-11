translation_unit:  [>>  b'/*noexcept\xe6\x97\xa2\xe6\x98\xaf\xe8\xbf\x90\xe7\xae\x97\xe7\xac\xa6\xe5\x8f\x88\xe6\x98\xaf\xe8\xaf\xb4\xe6\x98\x8e\xe7\xac\xa6\nnoexcept \xe8\xbf\x90\xe7\xae\x97\xe7\xac\xa6\xe8\xbf\x9b\xe8\xa1\x8c\xe7\xbc\x96\xe8\xaf\x91\xe6\x97\xb6\xe6\xa3\x80\xe6\x9f\xa5\xef\xbc\x8c\xe5\xa6\x82\xe6\x9e\x9c\xe8\xa1\xa8\xe8\xbe\xbe\xe5\xbc\x8f\xe4\xb8\x8d\xe4\xbc\x9a\xe6\x8a\x9b\xe5\x87\xba\xe4\xbb\xbb\xe4\xbd\x95\xe5\xbc\x82\xe5\xb8\xb8(\xe4\xb8\x8d\xe8\xae\xa1\xe7\xae\x97)\xe5\x88\x99\xe8\xbf\x94\xe5\x9b\x9e true\nnoexcept \xe8\xbf\x90\xe7\xae\x97\xe7\xac\xa6\xe6\x98\xbe\xe5\xbc\x8f\xe8\xa1\xa8\xe6\x98\x8e\xe5\x87\xbd\xe6\x95\xb0\xe6\x98\xaf\xe5\x90\xa6\xe4\xbc\x9a\xe6\x8a\x9b\xe5\x87\xba\xe5\xbc\x82\xe5\xb8\xb8\n\xe5\xa6\x82\xe6\x9e\x9c\xe8\x99\x9a\xe5\x87\xbd\xe6\x95\xb0\xe4\xb8\x8d\xe4\xbc\x9a\xe6\x8a\x9b\xe5\x87\xba\xef\xbc\x8c\xe9\x82\xa3\xe4\xb9\x88\xe5\xae\x83\xe6\xaf\x8f\xe4\xb8\xaa\xe8\xa6\x86\xe7\x9b\x96\xe7\x9a\x84\xe5\x87\xbd\xe6\x95\xb0\xe7\x9a\x84\xe6\x89\x80\xe6\x9c\x89\xe5\xa3\xb0\xe6\x98\x8e\xef\xbc\x88\xe5\x8c\x85\xe6\x8b\xac\xe5\xae\x9a\xe4\xb9\x89\xef\xbc\x89\xe9\x83\xbd\xe5\xbf\x85\xe9\xa1\xbb\xe4\xb8\x8d\xe6\x8a\x9b\xe5\x87\xba\xef\xbc\x8c\xe9\x99\xa4\xe9\x9d\x9e\xe8\xa6\x86\xe7\x9b\x96\xe5\x87\xbd\xe6\x95\xb0\xe8\xa2\xab\xe5\xae\x9a\xe4\xb9\x89\xe4\xb8\xba\xe5\xbc\x83\xe7\xbd\xae\xef\xbc\x9a\nfoo \xe6\x98\xaf\xe5\x90\xa6\xe5\xa3\xb0\xe6\x98\x8e\xe4\xb8\xba noexcept \xe5\x8f\x96\xe5\x86\xb3\xe4\xba\x8e T() \xe6\x98\xaf\xe5\x90\xa6\xe4\xbc\x9a\xe6\x8a\x9b\xe5\x87\xba\xe5\xbc\x82\xe5\xb8\xb8*/\ntemplate <class T>\n    void foo() noexcept(noexcept(T())) {}\nvoid f() noexcept {}; \nvoid (*fptr1)() noexcept(false); \nvoid fptr2(void pfa() noexcept);  \nstruct B {\n    virtual void g();\n    virtual void h() noexcept = delete;\n};\nstruct D: B {\n    void g() noexcept;   \n    void h() = delete;    \n};\nint main() \n{\n    foo<int>(); \n    f(); \n    bool a = noexcept(f());\n}\n'  <<]
  comment:  [>>  b'/*noexcept\xe6\x97\xa2\xe6\x98\xaf\xe8\xbf\x90\xe7\xae\x97\xe7\xac\xa6\xe5\x8f\x88\xe6\x98\xaf\xe8\xaf\xb4\xe6\x98\x8e\xe7\xac\xa6\nnoexcept \xe8\xbf\x90\xe7\xae\x97\xe7\xac\xa6\xe8\xbf\x9b\xe8\xa1\x8c\xe7\xbc\x96\xe8\xaf\x91\xe6\x97\xb6\xe6\xa3\x80\xe6\x9f\xa5\xef\xbc\x8c\xe5\xa6\x82\xe6\x9e\x9c\xe8\xa1\xa8\xe8\xbe\xbe\xe5\xbc\x8f\xe4\xb8\x8d\xe4\xbc\x9a\xe6\x8a\x9b\xe5\x87\xba\xe4\xbb\xbb\xe4\xbd\x95\xe5\xbc\x82\xe5\xb8\xb8(\xe4\xb8\x8d\xe8\xae\xa1\xe7\xae\x97)\xe5\x88\x99\xe8\xbf\x94\xe5\x9b\x9e true\nnoexcept \xe8\xbf\x90\xe7\xae\x97\xe7\xac\xa6\xe6\x98\xbe\xe5\xbc\x8f\xe8\xa1\xa8\xe6\x98\x8e\xe5\x87\xbd\xe6\x95\xb0\xe6\x98\xaf\xe5\x90\xa6\xe4\xbc\x9a\xe6\x8a\x9b\xe5\x87\xba\xe5\xbc\x82\xe5\xb8\xb8\n\xe5\xa6\x82\xe6\x9e\x9c\xe8\x99\x9a\xe5\x87\xbd\xe6\x95\xb0\xe4\xb8\x8d\xe4\xbc\x9a\xe6\x8a\x9b\xe5\x87\xba\xef\xbc\x8c\xe9\x82\xa3\xe4\xb9\x88\xe5\xae\x83\xe6\xaf\x8f\xe4\xb8\xaa\xe8\xa6\x86\xe7\x9b\x96\xe7\x9a\x84\xe5\x87\xbd\xe6\x95\xb0\xe7\x9a\x84\xe6\x89\x80\xe6\x9c\x89\xe5\xa3\xb0\xe6\x98\x8e\xef\xbc\x88\xe5\x8c\x85\xe6\x8b\xac\xe5\xae\x9a\xe4\xb9\x89\xef\xbc\x89\xe9\x83\xbd\xe5\xbf\x85\xe9\xa1\xbb\xe4\xb8\x8d\xe6\x8a\x9b\xe5\x87\xba\xef\xbc\x8c\xe9\x99\xa4\xe9\x9d\x9e\xe8\xa6\x86\xe7\x9b\x96\xe5\x87\xbd\xe6\x95\xb0\xe8\xa2\xab\xe5\xae\x9a\xe4\xb9\x89\xe4\xb8\xba\xe5\xbc\x83\xe7\xbd\xae\xef\xbc\x9a\nfoo \xe6\x98\xaf\xe5\x90\xa6\xe5\xa3\xb0\xe6\x98\x8e\xe4\xb8\xba noexcept \xe5\x8f\x96\xe5\x86\xb3\xe4\xba\x8e T() \xe6\x98\xaf\xe5\x90\xa6\xe4\xbc\x9a\xe6\x8a\x9b\xe5\x87\xba\xe5\xbc\x82\xe5\xb8\xb8*/'  <<]
  template_declaration:  [>>  b'template <class T>\n    void foo() noexcept(noexcept(T())) {}'  <<]
    template
    template_parameter_list:  [>>  b'<class T>'  <<]
      <
      type_parameter_declaration:  [>>  b'class T'  <<]
        class
        type_identifier:  [>>  b'T'  <<]
      >
    function_definition:  [>>  b'void foo() noexcept(noexcept(T())) {}'  <<]
      primitive_type:  [>>  b'void'  <<]
      function_declarator:  [>>  b'foo() noexcept(noexcept(T()))'  <<]
        identifier:  [>>  b'foo'  <<]
        parameter_list:  [>>  b'()'  <<]
          (
          )
        noexcept:  [>>  b'noexcept(noexcept(T()))'  <<]
          noexcept
          (
          call_expression:  [>>  b'noexcept(T())'  <<]
            identifier:  [>>  b'noexcept'  <<]
            argument_list:  [>>  b'(T())'  <<]
              (
              call_expression:  [>>  b'T()'  <<]
                identifier:  [>>  b'T'  <<]
                argument_list:  [>>  b'()'  <<]
                  (
                  )
              )
          )
      compound_statement:  [>>  b'{}'  <<]
        {
        }
  declaration:  [>>  b'void f() noexcept {};'  <<]
    primitive_type:  [>>  b'void'  <<]
    init_declarator:  [>>  b'f() noexcept {}'  <<]
      function_declarator:  [>>  b'f() noexcept'  <<]
        identifier:  [>>  b'f'  <<]
        parameter_list:  [>>  b'()'  <<]
          (
          )
        noexcept:  [>>  b'noexcept'  <<]
          noexcept
      initializer_list:  [>>  b'{}'  <<]
        {
        }
    ;
  declaration:  [>>  b'void (*fptr1)() noexcept(false);'  <<]
    primitive_type:  [>>  b'void'  <<]
    function_declarator:  [>>  b'(*fptr1)() noexcept(false)'  <<]
      parenthesized_declarator:  [>>  b'(*fptr1)'  <<]
        (
        pointer_declarator:  [>>  b'*fptr1'  <<]
          *
          identifier:  [>>  b'fptr1'  <<]
        )
      parameter_list:  [>>  b'()'  <<]
        (
        )
      noexcept:  [>>  b'noexcept(false)'  <<]
        noexcept
        (
        false:  [>>  b'false'  <<]
        )
    ;
  declaration:  [>>  b'void fptr2(void pfa() noexcept);'  <<]
    primitive_type:  [>>  b'void'  <<]
    function_declarator:  [>>  b'fptr2(void pfa() noexcept)'  <<]
      identifier:  [>>  b'fptr2'  <<]
      parameter_list:  [>>  b'(void pfa() noexcept)'  <<]
        (
        parameter_declaration:  [>>  b'void pfa() noexcept'  <<]
          primitive_type:  [>>  b'void'  <<]
          function_declarator:  [>>  b'pfa() noexcept'  <<]
            identifier:  [>>  b'pfa'  <<]
            parameter_list:  [>>  b'()'  <<]
              (
              )
            noexcept:  [>>  b'noexcept'  <<]
              noexcept
        )
    ;
  struct_specifier:  [>>  b'struct B {\n    virtual void g();\n    virtual void h() noexcept = delete;\n}'  <<]
    struct
    type_identifier:  [>>  b'B'  <<]
    field_declaration_list:  [>>  b'{\n    virtual void g();\n    virtual void h() noexcept = delete;\n}'  <<]
      {
      field_declaration:  [>>  b'virtual void g();'  <<]
        virtual:  [>>  b'virtual'  <<]
          virtual
        primitive_type:  [>>  b'void'  <<]
        function_declarator:  [>>  b'g()'  <<]
          field_identifier:  [>>  b'g'  <<]
          parameter_list:  [>>  b'()'  <<]
            (
            )
        ;
      function_definition:  [>>  b'virtual void h() noexcept = delete;'  <<]
        virtual:  [>>  b'virtual'  <<]
          virtual
        primitive_type:  [>>  b'void'  <<]
        function_declarator:  [>>  b'h() noexcept'  <<]
          field_identifier:  [>>  b'h'  <<]
          parameter_list:  [>>  b'()'  <<]
            (
            )
          noexcept:  [>>  b'noexcept'  <<]
            noexcept
        delete_method_clause:  [>>  b'= delete;'  <<]
          =
          delete
          ;
      }
  ;
  struct_specifier:  [>>  b'struct D: B {\n    void g() noexcept;   \n    void h() = delete;    \n}'  <<]
    struct
    type_identifier:  [>>  b'D'  <<]
    base_class_clause:  [>>  b': B'  <<]
      :
      type_identifier:  [>>  b'B'  <<]
    field_declaration_list:  [>>  b'{\n    void g() noexcept;   \n    void h() = delete;    \n}'  <<]
      {
      field_declaration:  [>>  b'void g() noexcept;'  <<]
        primitive_type:  [>>  b'void'  <<]
        function_declarator:  [>>  b'g() noexcept'  <<]
          field_identifier:  [>>  b'g'  <<]
          parameter_list:  [>>  b'()'  <<]
            (
            )
          noexcept:  [>>  b'noexcept'  <<]
            noexcept
        ;
      function_definition:  [>>  b'void h() = delete;'  <<]
        primitive_type:  [>>  b'void'  <<]
        function_declarator:  [>>  b'h()'  <<]
          field_identifier:  [>>  b'h'  <<]
          parameter_list:  [>>  b'()'  <<]
            (
            )
        delete_method_clause:  [>>  b'= delete;'  <<]
          =
          delete
          ;
      }
  ;
  function_definition:  [>>  b'int main() \n{\n    foo<int>(); \n    f(); \n    bool a = noexcept(f());\n}'  <<]
    primitive_type:  [>>  b'int'  <<]
    function_declarator:  [>>  b'main()'  <<]
      identifier:  [>>  b'main'  <<]
      parameter_list:  [>>  b'()'  <<]
        (
        )
    compound_statement:  [>>  b'{\n    foo<int>(); \n    f(); \n    bool a = noexcept(f());\n}'  <<]
      {
      expression_statement:  [>>  b'foo<int>();'  <<]
        call_expression:  [>>  b'foo<int>()'  <<]
          template_function:  [>>  b'foo<int>'  <<]
            identifier:  [>>  b'foo'  <<]
            template_argument_list:  [>>  b'<int>'  <<]
              <
              type_descriptor:  [>>  b'int'  <<]
                primitive_type:  [>>  b'int'  <<]
              >
          argument_list:  [>>  b'()'  <<]
            (
            )
        ;
      expression_statement:  [>>  b'f();'  <<]
        call_expression:  [>>  b'f()'  <<]
          identifier:  [>>  b'f'  <<]
          argument_list:  [>>  b'()'  <<]
            (
            )
        ;
      declaration:  [>>  b'bool a = noexcept(f());'  <<]
        primitive_type:  [>>  b'bool'  <<]
        init_declarator:  [>>  b'a = noexcept(f())'  <<]
          identifier:  [>>  b'a'  <<]
          =
          call_expression:  [>>  b'noexcept(f())'  <<]
            identifier:  [>>  b'noexcept'  <<]
            argument_list:  [>>  b'(f())'  <<]
              (
              call_expression:  [>>  b'f()'  <<]
                identifier:  [>>  b'f'  <<]
                argument_list:  [>>  b'()'  <<]
                  (
                  )
              )
        ;
      }
(translation_unit (comment) (template_declaration parameters: (template_parameter_list (type_parameter_declaration (type_identifier))) (function_definition type: (primitive_type) declarator: (function_declarator declarator: (identifier) parameters: (parameter_list) (noexcept (call_expression function: (identifier) arguments: (argument_list (call_expression function: (identifier) arguments: (argument_list)))))) body: (compound_statement))) (declaration type: (primitive_type) declarator: (init_declarator declarator: (function_declarator declarator: (identifier) parameters: (parameter_list) (noexcept)) value: (initializer_list))) (declaration type: (primitive_type) declarator: (function_declarator declarator: (parenthesized_declarator (pointer_declarator declarator: (identifier))) parameters: (parameter_list) (noexcept (false)))) (declaration type: (primitive_type) declarator: (function_declarator declarator: (identifier) parameters: (parameter_list (parameter_declaration type: (primitive_type) declarator: (function_declarator declarator: (identifier) parameters: (parameter_list) (noexcept)))))) (struct_specifier name: (type_identifier) body: (field_declaration_list (field_declaration (virtual) type: (primitive_type) declarator: (function_declarator declarator: (field_identifier) parameters: (parameter_list))) (function_definition (virtual) type: (primitive_type) declarator: (function_declarator declarator: (field_identifier) parameters: (parameter_list) (noexcept)) (delete_method_clause)))) (struct_specifier name: (type_identifier) (base_class_clause (type_identifier)) body: (field_declaration_list (field_declaration type: (primitive_type) declarator: (function_declarator declarator: (field_identifier) parameters: (parameter_list) (noexcept))) (function_definition type: (primitive_type) declarator: (function_declarator declarator: (field_identifier) parameters: (parameter_list)) (delete_method_clause)))) (function_definition type: (primitive_type) declarator: (function_declarator declarator: (identifier) parameters: (parameter_list)) body: (compound_statement (expression_statement (call_expression function: (template_function name: (identifier) arguments: (template_argument_list (type_descriptor type: (primitive_type)))) arguments: (argument_list))) (expression_statement (call_expression function: (identifier) arguments: (argument_list))) (declaration type: (primitive_type) declarator: (init_declarator declarator: (identifier) value: (call_expression function: (identifier) arguments: (argument_list (call_expression function: (identifier) arguments: (argument_list)))))))))
