translation_unit:  [>>  b'#include <iostream>\nclass A\n{\n    virtual void func(); // \xe7\xa7\x81\xe6\x9c\x89\xe6\x88\x90\xe5\x91\x98\npublic:\n    void callf() { func(); } // \xe5\x85\xac\xe5\xbc\x80\xe6\x8e\xa5\xe5\x8f\xa3\n};\nstruct B : public A\n{\n    void func() override{}; // \xe8\xa6\x86\xe7\x9b\x96 B::func ,override\xe5\xa3\xb0\xe6\x98\x8e\xe5\x8f\xaf\xe9\x80\x89\n};\nstruct C { virtual void f(); };     // C::f \xe6\x98\xaf\xe8\x99\x9a\xe5\x87\xbd\xe6\x95\xb0\nstruct D : C { void f(); };         // D \xe4\xb8\xad\xe7\x9a\x84 D::f \xe8\xa6\x86\xe7\x9b\x96 C::f\nstruct E : virtual D { void f() final; }; // E \xe4\xb8\xad\xe7\x9a\x84 E::f \xe8\xa6\x86\xe7\x9b\x96 C::f, \xe4\xb8\x94\xe4\xb8\xba\xe6\x9c\x80\xe7\xbb\x88\xe8\xa6\x86\xe7\x9b\x96\nstruct F : virtual D {}; // \xe6\x9c\x80\xe7\xbb\x88\xe8\xa6\x86\xe7\x9b\x96\xe5\x87\xbd\xe6\x95\xb0\xe6\x98\xaf D::f\nstruct G : E, F  {       //\xe6\x9c\x80\xe7\xbb\x88\xe8\xa6\x86\xe7\x9b\x96\xe5\x87\xbd\xe6\x95\xb0\xe6\x98\xaf E::f\n    using C::f; // \xe9\x9d\x9e\xe5\x87\xbd\xe6\x95\xb0\xe5\xa3\xb0\xe6\x98\x8e\xef\xbc\x8c\xe5\x8f\xaa\xe4\xb8\xba\xe4\xba\x86\xe8\x83\xbd\xe8\xae\xa9 C::f \xe8\xa2\xab\xe6\x9f\xa5\xe6\x89\xbe\xe5\x88\xb0\n};\nint main()\n{\n    B d;\n    A *bp = &d;\n    bp->callf(); // \xe5\x86\x85\xe9\x83\xa8\xe8\xb0\x83\xe7\x94\xa8 B::func();\n    G g;\n    g.f();    // \xe8\x99\x9a\xe8\xb0\x83\xe7\x94\xa8 E::f\n    g.C::f(); // \xe9\x9d\x9e\xe8\x99\x9a\xe8\xb0\x83\xe7\x94\xa8 C::f\n}'  <<]
  preproc_include:  [>>  b'#include <iostream>\n'  <<]
    #include
    system_lib_string:  [>>  b'<iostream>'  <<]
  class_specifier:  [>>  b'class A\n{\n    virtual void func(); // \xe7\xa7\x81\xe6\x9c\x89\xe6\x88\x90\xe5\x91\x98\npublic:\n    void callf() { func(); } // \xe5\x85\xac\xe5\xbc\x80\xe6\x8e\xa5\xe5\x8f\xa3\n}'  <<]
    class
    type_identifier:  [>>  b'A'  <<]
    field_declaration_list:  [>>  b'{\n    virtual void func(); // \xe7\xa7\x81\xe6\x9c\x89\xe6\x88\x90\xe5\x91\x98\npublic:\n    void callf() { func(); } // \xe5\x85\xac\xe5\xbc\x80\xe6\x8e\xa5\xe5\x8f\xa3\n}'  <<]
      {
      field_declaration:  [>>  b'virtual void func();'  <<]
        virtual:  [>>  b'virtual'  <<]
          virtual
        primitive_type:  [>>  b'void'  <<]
        function_declarator:  [>>  b'func()'  <<]
          field_identifier:  [>>  b'func'  <<]
          parameter_list:  [>>  b'()'  <<]
            (
            )
        ;
      comment:  [>>  b'// \xe7\xa7\x81\xe6\x9c\x89\xe6\x88\x90\xe5\x91\x98'  <<]
      access_specifier:  [>>  b'public'  <<]
        public
      :
      function_definition:  [>>  b'void callf() { func(); }'  <<]
        primitive_type:  [>>  b'void'  <<]
        function_declarator:  [>>  b'callf()'  <<]
          field_identifier:  [>>  b'callf'  <<]
          parameter_list:  [>>  b'()'  <<]
            (
            )
        compound_statement:  [>>  b'{ func(); }'  <<]
          {
          expression_statement:  [>>  b'func();'  <<]
            call_expression:  [>>  b'func()'  <<]
              identifier:  [>>  b'func'  <<]
              argument_list:  [>>  b'()'  <<]
                (
                )
            ;
          }
      comment:  [>>  b'// \xe5\x85\xac\xe5\xbc\x80\xe6\x8e\xa5\xe5\x8f\xa3'  <<]
      }
  ;
  struct_specifier:  [>>  b'struct B : public A\n{\n    void func() override{}; // \xe8\xa6\x86\xe7\x9b\x96 B::func ,override\xe5\xa3\xb0\xe6\x98\x8e\xe5\x8f\xaf\xe9\x80\x89\n}'  <<]
    struct
    type_identifier:  [>>  b'B'  <<]
    base_class_clause:  [>>  b': public A'  <<]
      :
      access_specifier:  [>>  b'public'  <<]
        public
      type_identifier:  [>>  b'A'  <<]
    field_declaration_list:  [>>  b'{\n    void func() override{}; // \xe8\xa6\x86\xe7\x9b\x96 B::func ,override\xe5\xa3\xb0\xe6\x98\x8e\xe5\x8f\xaf\xe9\x80\x89\n}'  <<]
      {
      field_declaration:  [>>  b'void func() override{};'  <<]
        primitive_type:  [>>  b'void'  <<]
        function_declarator:  [>>  b'func() override'  <<]
          field_identifier:  [>>  b'func'  <<]
          parameter_list:  [>>  b'()'  <<]
            (
            )
          virtual_specifier:  [>>  b'override'  <<]
            override
        initializer_list:  [>>  b'{}'  <<]
          {
          }
        ;
      comment:  [>>  b'// \xe8\xa6\x86\xe7\x9b\x96 B::func ,override\xe5\xa3\xb0\xe6\x98\x8e\xe5\x8f\xaf\xe9\x80\x89'  <<]
      }
  ;
  struct_specifier:  [>>  b'struct C { virtual void f(); }'  <<]
    struct
    type_identifier:  [>>  b'C'  <<]
    field_declaration_list:  [>>  b'{ virtual void f(); }'  <<]
      {
      field_declaration:  [>>  b'virtual void f();'  <<]
        virtual:  [>>  b'virtual'  <<]
          virtual
        primitive_type:  [>>  b'void'  <<]
        function_declarator:  [>>  b'f()'  <<]
          field_identifier:  [>>  b'f'  <<]
          parameter_list:  [>>  b'()'  <<]
            (
            )
        ;
      }
  ;
  comment:  [>>  b'// C::f \xe6\x98\xaf\xe8\x99\x9a\xe5\x87\xbd\xe6\x95\xb0'  <<]
  struct_specifier:  [>>  b'struct D : C { void f(); }'  <<]
    struct
    type_identifier:  [>>  b'D'  <<]
    base_class_clause:  [>>  b': C'  <<]
      :
      type_identifier:  [>>  b'C'  <<]
    field_declaration_list:  [>>  b'{ void f(); }'  <<]
      {
      field_declaration:  [>>  b'void f();'  <<]
        primitive_type:  [>>  b'void'  <<]
        function_declarator:  [>>  b'f()'  <<]
          field_identifier:  [>>  b'f'  <<]
          parameter_list:  [>>  b'()'  <<]
            (
            )
        ;
      }
  ;
  comment:  [>>  b'// D \xe4\xb8\xad\xe7\x9a\x84 D::f \xe8\xa6\x86\xe7\x9b\x96 C::f'  <<]
  struct_specifier:  [>>  b'struct E : virtual D { void f() final; }'  <<]
    struct
    type_identifier:  [>>  b'E'  <<]
    base_class_clause:  [>>  b': virtual D'  <<]
      :
      ERROR:  [>>  b'virtual'  <<]
        virtual:  [>>  b'virtual'  <<]
          virtual
      type_identifier:  [>>  b'D'  <<]
    field_declaration_list:  [>>  b'{ void f() final; }'  <<]
      {
      field_declaration:  [>>  b'void f() final;'  <<]
        primitive_type:  [>>  b'void'  <<]
        function_declarator:  [>>  b'f() final'  <<]
          field_identifier:  [>>  b'f'  <<]
          parameter_list:  [>>  b'()'  <<]
            (
            )
          virtual_specifier:  [>>  b'final'  <<]
            final
        ;
      }
  ;
  comment:  [>>  b'// E \xe4\xb8\xad\xe7\x9a\x84 E::f \xe8\xa6\x86\xe7\x9b\x96 C::f, \xe4\xb8\x94\xe4\xb8\xba\xe6\x9c\x80\xe7\xbb\x88\xe8\xa6\x86\xe7\x9b\x96'  <<]
  struct_specifier:  [>>  b'struct F : virtual D {}'  <<]
    struct
    type_identifier:  [>>  b'F'  <<]
    base_class_clause:  [>>  b': virtual D'  <<]
      :
      ERROR:  [>>  b'virtual'  <<]
        virtual:  [>>  b'virtual'  <<]
          virtual
      type_identifier:  [>>  b'D'  <<]
    field_declaration_list:  [>>  b'{}'  <<]
      {
      }
  ;
  comment:  [>>  b'// \xe6\x9c\x80\xe7\xbb\x88\xe8\xa6\x86\xe7\x9b\x96\xe5\x87\xbd\xe6\x95\xb0\xe6\x98\xaf D::f'  <<]
  struct_specifier:  [>>  b'struct G : E, F  {       //\xe6\x9c\x80\xe7\xbb\x88\xe8\xa6\x86\xe7\x9b\x96\xe5\x87\xbd\xe6\x95\xb0\xe6\x98\xaf E::f\n    using C::f; // \xe9\x9d\x9e\xe5\x87\xbd\xe6\x95\xb0\xe5\xa3\xb0\xe6\x98\x8e\xef\xbc\x8c\xe5\x8f\xaa\xe4\xb8\xba\xe4\xba\x86\xe8\x83\xbd\xe8\xae\xa9 C::f \xe8\xa2\xab\xe6\x9f\xa5\xe6\x89\xbe\xe5\x88\xb0\n}'  <<]
    struct
    type_identifier:  [>>  b'G'  <<]
    base_class_clause:  [>>  b': E, F'  <<]
      :
      type_identifier:  [>>  b'E'  <<]
      ,
      type_identifier:  [>>  b'F'  <<]
    field_declaration_list:  [>>  b'{       //\xe6\x9c\x80\xe7\xbb\x88\xe8\xa6\x86\xe7\x9b\x96\xe5\x87\xbd\xe6\x95\xb0\xe6\x98\xaf E::f\n    using C::f; // \xe9\x9d\x9e\xe5\x87\xbd\xe6\x95\xb0\xe5\xa3\xb0\xe6\x98\x8e\xef\xbc\x8c\xe5\x8f\xaa\xe4\xb8\xba\xe4\xba\x86\xe8\x83\xbd\xe8\xae\xa9 C::f \xe8\xa2\xab\xe6\x9f\xa5\xe6\x89\xbe\xe5\x88\xb0\n}'  <<]
      {
      comment:  [>>  b'//\xe6\x9c\x80\xe7\xbb\x88\xe8\xa6\x86\xe7\x9b\x96\xe5\x87\xbd\xe6\x95\xb0\xe6\x98\xaf E::f'  <<]
      using_declaration:  [>>  b'using C::f;'  <<]
        using
        qualified_identifier:  [>>  b'C::f'  <<]
          namespace_identifier:  [>>  b'C'  <<]
          ::
          identifier:  [>>  b'f'  <<]
        ;
      comment:  [>>  b'// \xe9\x9d\x9e\xe5\x87\xbd\xe6\x95\xb0\xe5\xa3\xb0\xe6\x98\x8e\xef\xbc\x8c\xe5\x8f\xaa\xe4\xb8\xba\xe4\xba\x86\xe8\x83\xbd\xe8\xae\xa9 C::f \xe8\xa2\xab\xe6\x9f\xa5\xe6\x89\xbe\xe5\x88\xb0'  <<]
      }
  ;
  function_definition:  [>>  b'int main()\n{\n    B d;\n    A *bp = &d;\n    bp->callf(); // \xe5\x86\x85\xe9\x83\xa8\xe8\xb0\x83\xe7\x94\xa8 B::func();\n    G g;\n    g.f();    // \xe8\x99\x9a\xe8\xb0\x83\xe7\x94\xa8 E::f\n    g.C::f(); // \xe9\x9d\x9e\xe8\x99\x9a\xe8\xb0\x83\xe7\x94\xa8 C::f\n}'  <<]
    primitive_type:  [>>  b'int'  <<]
    function_declarator:  [>>  b'main()'  <<]
      identifier:  [>>  b'main'  <<]
      parameter_list:  [>>  b'()'  <<]
        (
        )
    compound_statement:  [>>  b'{\n    B d;\n    A *bp = &d;\n    bp->callf(); // \xe5\x86\x85\xe9\x83\xa8\xe8\xb0\x83\xe7\x94\xa8 B::func();\n    G g;\n    g.f();    // \xe8\x99\x9a\xe8\xb0\x83\xe7\x94\xa8 E::f\n    g.C::f(); // \xe9\x9d\x9e\xe8\x99\x9a\xe8\xb0\x83\xe7\x94\xa8 C::f\n}'  <<]
      {
      declaration:  [>>  b'B d;'  <<]
        type_identifier:  [>>  b'B'  <<]
        identifier:  [>>  b'd'  <<]
        ;
      declaration:  [>>  b'A *bp = &d;'  <<]
        type_identifier:  [>>  b'A'  <<]
        init_declarator:  [>>  b'*bp = &d'  <<]
          pointer_declarator:  [>>  b'*bp'  <<]
            *
            identifier:  [>>  b'bp'  <<]
          =
          pointer_expression:  [>>  b'&d'  <<]
            &
            identifier:  [>>  b'd'  <<]
        ;
      expression_statement:  [>>  b'bp->callf();'  <<]
        call_expression:  [>>  b'bp->callf()'  <<]
          field_expression:  [>>  b'bp->callf'  <<]
            identifier:  [>>  b'bp'  <<]
            ->
            field_identifier:  [>>  b'callf'  <<]
          argument_list:  [>>  b'()'  <<]
            (
            )
        ;
      comment:  [>>  b'// \xe5\x86\x85\xe9\x83\xa8\xe8\xb0\x83\xe7\x94\xa8 B::func();'  <<]
      declaration:  [>>  b'G g;'  <<]
        type_identifier:  [>>  b'G'  <<]
        identifier:  [>>  b'g'  <<]
        ;
      expression_statement:  [>>  b'g.f();'  <<]
        call_expression:  [>>  b'g.f()'  <<]
          field_expression:  [>>  b'g.f'  <<]
            identifier:  [>>  b'g'  <<]
            .
            field_identifier:  [>>  b'f'  <<]
          argument_list:  [>>  b'()'  <<]
            (
            )
        ;
      comment:  [>>  b'// \xe8\x99\x9a\xe8\xb0\x83\xe7\x94\xa8 E::f'  <<]
      expression_statement:  [>>  b'g.C::f();'  <<]
        field_expression:  [>>  b'g.C'  <<]
          identifier:  [>>  b'g'  <<]
          .
          field_identifier:  [>>  b'C'  <<]
        ERROR:  [>>  b'::f()'  <<]
          :
          raw_string_delimiter:  [>>  b':f'  <<]
          (
          )
        ;
      comment:  [>>  b'// \xe9\x9d\x9e\xe8\x99\x9a\xe8\xb0\x83\xe7\x94\xa8 C::f'  <<]
      }
(translation_unit (preproc_include path: (system_lib_string)) (class_specifier name: (type_identifier) body: (field_declaration_list (field_declaration (virtual) type: (primitive_type) declarator: (function_declarator declarator: (field_identifier) parameters: (parameter_list))) (comment) (access_specifier) (function_definition type: (primitive_type) declarator: (function_declarator declarator: (field_identifier) parameters: (parameter_list)) body: (compound_statement (expression_statement (call_expression function: (identifier) arguments: (argument_list))))) (comment))) (struct_specifier name: (type_identifier) (base_class_clause (access_specifier) (type_identifier)) body: (field_declaration_list (field_declaration type: (primitive_type) declarator: (function_declarator declarator: (field_identifier) parameters: (parameter_list) (virtual_specifier)) default_value: (initializer_list)) (comment))) (struct_specifier name: (type_identifier) body: (field_declaration_list (field_declaration (virtual) type: (primitive_type) declarator: (function_declarator declarator: (field_identifier) parameters: (parameter_list))))) (comment) (struct_specifier name: (type_identifier) (base_class_clause (type_identifier)) body: (field_declaration_list (field_declaration type: (primitive_type) declarator: (function_declarator declarator: (field_identifier) parameters: (parameter_list))))) (comment) (struct_specifier name: (type_identifier) (base_class_clause (ERROR (virtual)) (type_identifier)) body: (field_declaration_list (field_declaration type: (primitive_type) declarator: (function_declarator declarator: (field_identifier) parameters: (parameter_list) (virtual_specifier))))) (comment) (struct_specifier name: (type_identifier) (base_class_clause (ERROR (virtual)) (type_identifier)) body: (field_declaration_list)) (comment) (struct_specifier name: (type_identifier) (base_class_clause (type_identifier) (type_identifier)) body: (field_declaration_list (comment) (using_declaration (qualified_identifier scope: (namespace_identifier) name: (identifier))) (comment))) (function_definition type: (primitive_type) declarator: (function_declarator declarator: (identifier) parameters: (parameter_list)) body: (compound_statement (declaration type: (type_identifier) declarator: (identifier)) (declaration type: (type_identifier) declarator: (init_declarator declarator: (pointer_declarator declarator: (identifier)) value: (pointer_expression argument: (identifier)))) (expression_statement (call_expression function: (field_expression argument: (identifier) field: (field_identifier)) arguments: (argument_list))) (comment) (declaration type: (type_identifier) declarator: (identifier)) (expression_statement (call_expression function: (field_expression argument: (identifier) field: (field_identifier)) arguments: (argument_list))) (comment) (expression_statement (field_expression argument: (identifier) field: (field_identifier)) (ERROR (raw_string_delimiter))) (comment))))
