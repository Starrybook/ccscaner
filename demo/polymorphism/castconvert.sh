translation_unit:  [>>  b'class Base\n{\npublic:\n    virtual void func() {} // \xe5\x8f\xaa\xe6\x9c\x89\xe5\xa4\x9a\xe6\x80\x81\xe7\xb1\xbb\xe5\x9e\x8b\xe6\x89\x8d\xe8\x83\xbdcast\n};\n\nclass Derived : public Base\n{\npublic:\n    void func() override {}\n};\n\nint main()\n{\n    Base *basePtr = new Derived();\n    Derived *derivedPtr = dynamic_cast<Derived *>(basePtr); // dynamic_cast\xe5\xb8\xb8\xe7\x94\xa8\xe4\xbd\x9c\xe5\xae\x89\xe5\x85\xa8\xe5\x90\x91\xe4\xb8\x8b\xe8\xbd\xac\xe6\x8d\xa2\n    Derived *dptr = new Derived();\n    Base *bptr = static_cast<Base *>(dptr); // static_cast\xe5\xb8\xb8\xe7\x94\xa8\xe4\xbd\x9c\xe5\xae\x89\xe5\x85\xa8\xe5\x90\x91\xe4\xb8\x8a\xe8\xbd\xac\xe6\x8d\xa2\n    void *p = nullptr;\n    Base *b = static_cast<Base *>(p);\n    void *vptr = static_cast<void *>(bptr); // static_cast\xe8\x83\xbd\xe7\x94\xa8\xe4\xbd\x9c\xe4\xbb\xbb\xe6\x84\x8fvoid*\xe7\x9a\x84\xe8\xbd\xac\xe6\x8d\xa2\n    double pi = 3.14159;\n    int approxPi = static_cast<int>(pi);\n    /*const_cast\xe5\xb8\xb8\xe7\x94\xa8\xe6\x9d\xa5\xe5\x8e\xbb\xe9\x99\xa4const\xe5\xb1\x9e\xe6\x80\xa7\xef\xbc\x8c\xe4\xbe\xbf\xe4\xba\x8e\xe4\xbf\xae\xe6\x94\xb9\xe5\x80\xbc\n    1\xe3\x80\x81\xe5\xb8\xb8\xe9\x87\x8f\xe6\x8c\x87\xe9\x92\x88\xe8\xa2\xab\xe8\xbd\xac\xe5\x8c\x96\xe6\x88\x90\xe9\x9d\x9e\xe5\xb8\xb8\xe9\x87\x8f\xe7\x9a\x84\xe6\x8c\x87\xe9\x92\x88\xef\xbc\x8c\xe5\xb9\xb6\xe4\xb8\x94\xe4\xbb\x8d\xe7\x84\xb6\xe6\x8c\x87\xe5\x90\x91\xe5\x8e\x9f\xe6\x9d\xa5\xe7\x9a\x84\xe5\xaf\xb9\xe8\xb1\xa1\xef\xbc\x9b\n    2\xe3\x80\x81\xe5\xb8\xb8\xe9\x87\x8f\xe5\xbc\x95\xe7\x94\xa8\xe8\xa2\xab\xe8\xbd\xac\xe6\x8d\xa2\xe6\x88\x90\xe9\x9d\x9e\xe5\xb8\xb8\xe9\x87\x8f\xe7\x9a\x84\xe5\xbc\x95\xe7\x94\xa8\xef\xbc\x8c\xe5\xb9\xb6\xe4\xb8\x94\xe4\xbb\x8d\xe7\x84\xb6\xe6\x8c\x87\xe5\x90\x91\xe5\x8e\x9f\xe6\x9d\xa5\xe7\x9a\x84\xe5\xaf\xb9\xe8\xb1\xa1\xef\xbc\x9b\n    */\n    const int ci = 10;\n    int *nonConstPtr = const_cast<int *>(&ci);\n    int &r = const_cast<int &>(ci);\n    return 0;\n}\n'  <<]
  class_specifier:  [>>  b'class Base\n{\npublic:\n    virtual void func() {} // \xe5\x8f\xaa\xe6\x9c\x89\xe5\xa4\x9a\xe6\x80\x81\xe7\xb1\xbb\xe5\x9e\x8b\xe6\x89\x8d\xe8\x83\xbdcast\n}'  <<]
    class
    type_identifier:  [>>  b'Base'  <<]
    field_declaration_list:  [>>  b'{\npublic:\n    virtual void func() {} // \xe5\x8f\xaa\xe6\x9c\x89\xe5\xa4\x9a\xe6\x80\x81\xe7\xb1\xbb\xe5\x9e\x8b\xe6\x89\x8d\xe8\x83\xbdcast\n}'  <<]
      {
      access_specifier:  [>>  b'public'  <<]
        public
      :
      function_definition:  [>>  b'virtual void func() {}'  <<]
        virtual:  [>>  b'virtual'  <<]
          virtual
        primitive_type:  [>>  b'void'  <<]
        function_declarator:  [>>  b'func()'  <<]
          field_identifier:  [>>  b'func'  <<]
          parameter_list:  [>>  b'()'  <<]
            (
            )
        compound_statement:  [>>  b'{}'  <<]
          {
          }
      comment:  [>>  b'// \xe5\x8f\xaa\xe6\x9c\x89\xe5\xa4\x9a\xe6\x80\x81\xe7\xb1\xbb\xe5\x9e\x8b\xe6\x89\x8d\xe8\x83\xbdcast'  <<]
      }
  ;
  class_specifier:  [>>  b'class Derived : public Base\n{\npublic:\n    void func() override {}\n}'  <<]
    class
    type_identifier:  [>>  b'Derived'  <<]
    base_class_clause:  [>>  b': public Base'  <<]
      :
      access_specifier:  [>>  b'public'  <<]
        public
      type_identifier:  [>>  b'Base'  <<]
    field_declaration_list:  [>>  b'{\npublic:\n    void func() override {}\n}'  <<]
      {
      access_specifier:  [>>  b'public'  <<]
        public
      :
      function_definition:  [>>  b'void func() override {}'  <<]
        primitive_type:  [>>  b'void'  <<]
        function_declarator:  [>>  b'func() override'  <<]
          field_identifier:  [>>  b'func'  <<]
          parameter_list:  [>>  b'()'  <<]
            (
            )
          virtual_specifier:  [>>  b'override'  <<]
            override
        compound_statement:  [>>  b'{}'  <<]
          {
          }
      }
  ;
  function_definition:  [>>  b'int main()\n{\n    Base *basePtr = new Derived();\n    Derived *derivedPtr = dynamic_cast<Derived *>(basePtr); // dynamic_cast\xe5\xb8\xb8\xe7\x94\xa8\xe4\xbd\x9c\xe5\xae\x89\xe5\x85\xa8\xe5\x90\x91\xe4\xb8\x8b\xe8\xbd\xac\xe6\x8d\xa2\n    Derived *dptr = new Derived();\n    Base *bptr = static_cast<Base *>(dptr); // static_cast\xe5\xb8\xb8\xe7\x94\xa8\xe4\xbd\x9c\xe5\xae\x89\xe5\x85\xa8\xe5\x90\x91\xe4\xb8\x8a\xe8\xbd\xac\xe6\x8d\xa2\n    void *p = nullptr;\n    Base *b = static_cast<Base *>(p);\n    void *vptr = static_cast<void *>(bptr); // static_cast\xe8\x83\xbd\xe7\x94\xa8\xe4\xbd\x9c\xe4\xbb\xbb\xe6\x84\x8fvoid*\xe7\x9a\x84\xe8\xbd\xac\xe6\x8d\xa2\n    double pi = 3.14159;\n    int approxPi = static_cast<int>(pi);\n    /*const_cast\xe5\xb8\xb8\xe7\x94\xa8\xe6\x9d\xa5\xe5\x8e\xbb\xe9\x99\xa4const\xe5\xb1\x9e\xe6\x80\xa7\xef\xbc\x8c\xe4\xbe\xbf\xe4\xba\x8e\xe4\xbf\xae\xe6\x94\xb9\xe5\x80\xbc\n    1\xe3\x80\x81\xe5\xb8\xb8\xe9\x87\x8f\xe6\x8c\x87\xe9\x92\x88\xe8\xa2\xab\xe8\xbd\xac\xe5\x8c\x96\xe6\x88\x90\xe9\x9d\x9e\xe5\xb8\xb8\xe9\x87\x8f\xe7\x9a\x84\xe6\x8c\x87\xe9\x92\x88\xef\xbc\x8c\xe5\xb9\xb6\xe4\xb8\x94\xe4\xbb\x8d\xe7\x84\xb6\xe6\x8c\x87\xe5\x90\x91\xe5\x8e\x9f\xe6\x9d\xa5\xe7\x9a\x84\xe5\xaf\xb9\xe8\xb1\xa1\xef\xbc\x9b\n    2\xe3\x80\x81\xe5\xb8\xb8\xe9\x87\x8f\xe5\xbc\x95\xe7\x94\xa8\xe8\xa2\xab\xe8\xbd\xac\xe6\x8d\xa2\xe6\x88\x90\xe9\x9d\x9e\xe5\xb8\xb8\xe9\x87\x8f\xe7\x9a\x84\xe5\xbc\x95\xe7\x94\xa8\xef\xbc\x8c\xe5\xb9\xb6\xe4\xb8\x94\xe4\xbb\x8d\xe7\x84\xb6\xe6\x8c\x87\xe5\x90\x91\xe5\x8e\x9f\xe6\x9d\xa5\xe7\x9a\x84\xe5\xaf\xb9\xe8\xb1\xa1\xef\xbc\x9b\n    */\n    const int ci = 10;\n    int *nonConstPtr = const_cast<int *>(&ci);\n    int &r = const_cast<int &>(ci);\n    return 0;\n}'  <<]
    primitive_type:  [>>  b'int'  <<]
    function_declarator:  [>>  b'main()'  <<]
      identifier:  [>>  b'main'  <<]
      parameter_list:  [>>  b'()'  <<]
        (
        )
    compound_statement:  [>>  b'{\n    Base *basePtr = new Derived();\n    Derived *derivedPtr = dynamic_cast<Derived *>(basePtr); // dynamic_cast\xe5\xb8\xb8\xe7\x94\xa8\xe4\xbd\x9c\xe5\xae\x89\xe5\x85\xa8\xe5\x90\x91\xe4\xb8\x8b\xe8\xbd\xac\xe6\x8d\xa2\n    Derived *dptr = new Derived();\n    Base *bptr = static_cast<Base *>(dptr); // static_cast\xe5\xb8\xb8\xe7\x94\xa8\xe4\xbd\x9c\xe5\xae\x89\xe5\x85\xa8\xe5\x90\x91\xe4\xb8\x8a\xe8\xbd\xac\xe6\x8d\xa2\n    void *p = nullptr;\n    Base *b = static_cast<Base *>(p);\n    void *vptr = static_cast<void *>(bptr); // static_cast\xe8\x83\xbd\xe7\x94\xa8\xe4\xbd\x9c\xe4\xbb\xbb\xe6\x84\x8fvoid*\xe7\x9a\x84\xe8\xbd\xac\xe6\x8d\xa2\n    double pi = 3.14159;\n    int approxPi = static_cast<int>(pi);\n    /*const_cast\xe5\xb8\xb8\xe7\x94\xa8\xe6\x9d\xa5\xe5\x8e\xbb\xe9\x99\xa4const\xe5\xb1\x9e\xe6\x80\xa7\xef\xbc\x8c\xe4\xbe\xbf\xe4\xba\x8e\xe4\xbf\xae\xe6\x94\xb9\xe5\x80\xbc\n    1\xe3\x80\x81\xe5\xb8\xb8\xe9\x87\x8f\xe6\x8c\x87\xe9\x92\x88\xe8\xa2\xab\xe8\xbd\xac\xe5\x8c\x96\xe6\x88\x90\xe9\x9d\x9e\xe5\xb8\xb8\xe9\x87\x8f\xe7\x9a\x84\xe6\x8c\x87\xe9\x92\x88\xef\xbc\x8c\xe5\xb9\xb6\xe4\xb8\x94\xe4\xbb\x8d\xe7\x84\xb6\xe6\x8c\x87\xe5\x90\x91\xe5\x8e\x9f\xe6\x9d\xa5\xe7\x9a\x84\xe5\xaf\xb9\xe8\xb1\xa1\xef\xbc\x9b\n    2\xe3\x80\x81\xe5\xb8\xb8\xe9\x87\x8f\xe5\xbc\x95\xe7\x94\xa8\xe8\xa2\xab\xe8\xbd\xac\xe6\x8d\xa2\xe6\x88\x90\xe9\x9d\x9e\xe5\xb8\xb8\xe9\x87\x8f\xe7\x9a\x84\xe5\xbc\x95\xe7\x94\xa8\xef\xbc\x8c\xe5\xb9\xb6\xe4\xb8\x94\xe4\xbb\x8d\xe7\x84\xb6\xe6\x8c\x87\xe5\x90\x91\xe5\x8e\x9f\xe6\x9d\xa5\xe7\x9a\x84\xe5\xaf\xb9\xe8\xb1\xa1\xef\xbc\x9b\n    */\n    const int ci = 10;\n    int *nonConstPtr = const_cast<int *>(&ci);\n    int &r = const_cast<int &>(ci);\n    return 0;\n}'  <<]
      {
      declaration:  [>>  b'Base *basePtr = new Derived();'  <<]
        type_identifier:  [>>  b'Base'  <<]
        init_declarator:  [>>  b'*basePtr = new Derived()'  <<]
          pointer_declarator:  [>>  b'*basePtr'  <<]
            *
            identifier:  [>>  b'basePtr'  <<]
          =
          new_expression:  [>>  b'new Derived()'  <<]
            new
            type_identifier:  [>>  b'Derived'  <<]
            argument_list:  [>>  b'()'  <<]
              (
              )
        ;
      declaration:  [>>  b'Derived *derivedPtr = dynamic_cast<Derived *>(basePtr);'  <<]
        type_identifier:  [>>  b'Derived'  <<]
        init_declarator:  [>>  b'*derivedPtr = dynamic_cast<Derived *>(basePtr)'  <<]
          pointer_declarator:  [>>  b'*derivedPtr'  <<]
            *
            identifier:  [>>  b'derivedPtr'  <<]
          =
          call_expression:  [>>  b'dynamic_cast<Derived *>(basePtr)'  <<]
            template_function:  [>>  b'dynamic_cast<Derived *>'  <<]
              identifier:  [>>  b'dynamic_cast'  <<]
              template_argument_list:  [>>  b'<Derived *>'  <<]
                <
                type_descriptor:  [>>  b'Derived *'  <<]
                  type_identifier:  [>>  b'Derived'  <<]
                  abstract_pointer_declarator:  [>>  b'*'  <<]
                    *
                >
            argument_list:  [>>  b'(basePtr)'  <<]
              (
              identifier:  [>>  b'basePtr'  <<]
              )
        ;
      comment:  [>>  b'// dynamic_cast\xe5\xb8\xb8\xe7\x94\xa8\xe4\xbd\x9c\xe5\xae\x89\xe5\x85\xa8\xe5\x90\x91\xe4\xb8\x8b\xe8\xbd\xac\xe6\x8d\xa2'  <<]
      declaration:  [>>  b'Derived *dptr = new Derived();'  <<]
        type_identifier:  [>>  b'Derived'  <<]
        init_declarator:  [>>  b'*dptr = new Derived()'  <<]
          pointer_declarator:  [>>  b'*dptr'  <<]
            *
            identifier:  [>>  b'dptr'  <<]
          =
          new_expression:  [>>  b'new Derived()'  <<]
            new
            type_identifier:  [>>  b'Derived'  <<]
            argument_list:  [>>  b'()'  <<]
              (
              )
        ;
      declaration:  [>>  b'Base *bptr = static_cast<Base *>(dptr);'  <<]
        type_identifier:  [>>  b'Base'  <<]
        init_declarator:  [>>  b'*bptr = static_cast<Base *>(dptr)'  <<]
          pointer_declarator:  [>>  b'*bptr'  <<]
            *
            identifier:  [>>  b'bptr'  <<]
          =
          call_expression:  [>>  b'static_cast<Base *>(dptr)'  <<]
            template_function:  [>>  b'static_cast<Base *>'  <<]
              identifier:  [>>  b'static_cast'  <<]
              template_argument_list:  [>>  b'<Base *>'  <<]
                <
                type_descriptor:  [>>  b'Base *'  <<]
                  type_identifier:  [>>  b'Base'  <<]
                  abstract_pointer_declarator:  [>>  b'*'  <<]
                    *
                >
            argument_list:  [>>  b'(dptr)'  <<]
              (
              identifier:  [>>  b'dptr'  <<]
              )
        ;
      comment:  [>>  b'// static_cast\xe5\xb8\xb8\xe7\x94\xa8\xe4\xbd\x9c\xe5\xae\x89\xe5\x85\xa8\xe5\x90\x91\xe4\xb8\x8a\xe8\xbd\xac\xe6\x8d\xa2'  <<]
      declaration:  [>>  b'void *p = nullptr;'  <<]
        primitive_type:  [>>  b'void'  <<]
        init_declarator:  [>>  b'*p = nullptr'  <<]
          pointer_declarator:  [>>  b'*p'  <<]
            *
            identifier:  [>>  b'p'  <<]
          =
          null:  [>>  b'nullptr'  <<]
            nullptr
        ;
      declaration:  [>>  b'Base *b = static_cast<Base *>(p);'  <<]
        type_identifier:  [>>  b'Base'  <<]
        init_declarator:  [>>  b'*b = static_cast<Base *>(p)'  <<]
          pointer_declarator:  [>>  b'*b'  <<]
            *
            identifier:  [>>  b'b'  <<]
          =
          call_expression:  [>>  b'static_cast<Base *>(p)'  <<]
            template_function:  [>>  b'static_cast<Base *>'  <<]
              identifier:  [>>  b'static_cast'  <<]
              template_argument_list:  [>>  b'<Base *>'  <<]
                <
                type_descriptor:  [>>  b'Base *'  <<]
                  type_identifier:  [>>  b'Base'  <<]
                  abstract_pointer_declarator:  [>>  b'*'  <<]
                    *
                >
            argument_list:  [>>  b'(p)'  <<]
              (
              identifier:  [>>  b'p'  <<]
              )
        ;
      declaration:  [>>  b'void *vptr = static_cast<void *>(bptr);'  <<]
        primitive_type:  [>>  b'void'  <<]
        init_declarator:  [>>  b'*vptr = static_cast<void *>(bptr)'  <<]
          pointer_declarator:  [>>  b'*vptr'  <<]
            *
            identifier:  [>>  b'vptr'  <<]
          =
          call_expression:  [>>  b'static_cast<void *>(bptr)'  <<]
            template_function:  [>>  b'static_cast<void *>'  <<]
              identifier:  [>>  b'static_cast'  <<]
              template_argument_list:  [>>  b'<void *>'  <<]
                <
                type_descriptor:  [>>  b'void *'  <<]
                  primitive_type:  [>>  b'void'  <<]
                  abstract_pointer_declarator:  [>>  b'*'  <<]
                    *
                >
            argument_list:  [>>  b'(bptr)'  <<]
              (
              identifier:  [>>  b'bptr'  <<]
              )
        ;
      comment:  [>>  b'// static_cast\xe8\x83\xbd\xe7\x94\xa8\xe4\xbd\x9c\xe4\xbb\xbb\xe6\x84\x8fvoid*\xe7\x9a\x84\xe8\xbd\xac\xe6\x8d\xa2'  <<]
      declaration:  [>>  b'double pi = 3.14159;'  <<]
        primitive_type:  [>>  b'double'  <<]
        init_declarator:  [>>  b'pi = 3.14159'  <<]
          identifier:  [>>  b'pi'  <<]
          =
          number_literal:  [>>  b'3.14159'  <<]
        ;
      declaration:  [>>  b'int approxPi = static_cast<int>(pi);'  <<]
        primitive_type:  [>>  b'int'  <<]
        init_declarator:  [>>  b'approxPi = static_cast<int>(pi)'  <<]
          identifier:  [>>  b'approxPi'  <<]
          =
          call_expression:  [>>  b'static_cast<int>(pi)'  <<]
            template_function:  [>>  b'static_cast<int>'  <<]
              identifier:  [>>  b'static_cast'  <<]
              template_argument_list:  [>>  b'<int>'  <<]
                <
                type_descriptor:  [>>  b'int'  <<]
                  primitive_type:  [>>  b'int'  <<]
                >
            argument_list:  [>>  b'(pi)'  <<]
              (
              identifier:  [>>  b'pi'  <<]
              )
        ;
      comment:  [>>  b'/*const_cast\xe5\xb8\xb8\xe7\x94\xa8\xe6\x9d\xa5\xe5\x8e\xbb\xe9\x99\xa4const\xe5\xb1\x9e\xe6\x80\xa7\xef\xbc\x8c\xe4\xbe\xbf\xe4\xba\x8e\xe4\xbf\xae\xe6\x94\xb9\xe5\x80\xbc\n    1\xe3\x80\x81\xe5\xb8\xb8\xe9\x87\x8f\xe6\x8c\x87\xe9\x92\x88\xe8\xa2\xab\xe8\xbd\xac\xe5\x8c\x96\xe6\x88\x90\xe9\x9d\x9e\xe5\xb8\xb8\xe9\x87\x8f\xe7\x9a\x84\xe6\x8c\x87\xe9\x92\x88\xef\xbc\x8c\xe5\xb9\xb6\xe4\xb8\x94\xe4\xbb\x8d\xe7\x84\xb6\xe6\x8c\x87\xe5\x90\x91\xe5\x8e\x9f\xe6\x9d\xa5\xe7\x9a\x84\xe5\xaf\xb9\xe8\xb1\xa1\xef\xbc\x9b\n    2\xe3\x80\x81\xe5\xb8\xb8\xe9\x87\x8f\xe5\xbc\x95\xe7\x94\xa8\xe8\xa2\xab\xe8\xbd\xac\xe6\x8d\xa2\xe6\x88\x90\xe9\x9d\x9e\xe5\xb8\xb8\xe9\x87\x8f\xe7\x9a\x84\xe5\xbc\x95\xe7\x94\xa8\xef\xbc\x8c\xe5\xb9\xb6\xe4\xb8\x94\xe4\xbb\x8d\xe7\x84\xb6\xe6\x8c\x87\xe5\x90\x91\xe5\x8e\x9f\xe6\x9d\xa5\xe7\x9a\x84\xe5\xaf\xb9\xe8\xb1\xa1\xef\xbc\x9b\n    */'  <<]
      declaration:  [>>  b'const int ci = 10;'  <<]
        type_qualifier:  [>>  b'const'  <<]
          const
        primitive_type:  [>>  b'int'  <<]
        init_declarator:  [>>  b'ci = 10'  <<]
          identifier:  [>>  b'ci'  <<]
          =
          number_literal:  [>>  b'10'  <<]
        ;
      declaration:  [>>  b'int *nonConstPtr = const_cast<int *>(&ci);'  <<]
        primitive_type:  [>>  b'int'  <<]
        init_declarator:  [>>  b'*nonConstPtr = const_cast<int *>(&ci)'  <<]
          pointer_declarator:  [>>  b'*nonConstPtr'  <<]
            *
            identifier:  [>>  b'nonConstPtr'  <<]
          =
          call_expression:  [>>  b'const_cast<int *>(&ci)'  <<]
            template_function:  [>>  b'const_cast<int *>'  <<]
              identifier:  [>>  b'const_cast'  <<]
              template_argument_list:  [>>  b'<int *>'  <<]
                <
                type_descriptor:  [>>  b'int *'  <<]
                  primitive_type:  [>>  b'int'  <<]
                  abstract_pointer_declarator:  [>>  b'*'  <<]
                    *
                >
            argument_list:  [>>  b'(&ci)'  <<]
              (
              pointer_expression:  [>>  b'&ci'  <<]
                &
                identifier:  [>>  b'ci'  <<]
              )
        ;
      declaration:  [>>  b'int &r = const_cast<int &>(ci);'  <<]
        primitive_type:  [>>  b'int'  <<]
        init_declarator:  [>>  b'&r = const_cast<int &>(ci)'  <<]
          reference_declarator:  [>>  b'&r'  <<]
            &
            identifier:  [>>  b'r'  <<]
          =
          call_expression:  [>>  b'const_cast<int &>(ci)'  <<]
            template_function:  [>>  b'const_cast<int &>'  <<]
              identifier:  [>>  b'const_cast'  <<]
              template_argument_list:  [>>  b'<int &>'  <<]
                <
                type_descriptor:  [>>  b'int &'  <<]
                  primitive_type:  [>>  b'int'  <<]
                  abstract_reference_declarator:  [>>  b'&'  <<]
                    &
                >
            argument_list:  [>>  b'(ci)'  <<]
              (
              identifier:  [>>  b'ci'  <<]
              )
        ;
      return_statement:  [>>  b'return 0;'  <<]
        return
        number_literal:  [>>  b'0'  <<]
        ;
      }
(translation_unit (class_specifier name: (type_identifier) body: (field_declaration_list (access_specifier) (function_definition (virtual) type: (primitive_type) declarator: (function_declarator declarator: (field_identifier) parameters: (parameter_list)) body: (compound_statement)) (comment))) (class_specifier name: (type_identifier) (base_class_clause (access_specifier) (type_identifier)) body: (field_declaration_list (access_specifier) (function_definition type: (primitive_type) declarator: (function_declarator declarator: (field_identifier) parameters: (parameter_list) (virtual_specifier)) body: (compound_statement)))) (function_definition type: (primitive_type) declarator: (function_declarator declarator: (identifier) parameters: (parameter_list)) body: (compound_statement (declaration type: (type_identifier) declarator: (init_declarator declarator: (pointer_declarator declarator: (identifier)) value: (new_expression type: (type_identifier) arguments: (argument_list)))) (declaration type: (type_identifier) declarator: (init_declarator declarator: (pointer_declarator declarator: (identifier)) value: (call_expression function: (template_function name: (identifier) arguments: (template_argument_list (type_descriptor type: (type_identifier) declarator: (abstract_pointer_declarator)))) arguments: (argument_list (identifier))))) (comment) (declaration type: (type_identifier) declarator: (init_declarator declarator: (pointer_declarator declarator: (identifier)) value: (new_expression type: (type_identifier) arguments: (argument_list)))) (declaration type: (type_identifier) declarator: (init_declarator declarator: (pointer_declarator declarator: (identifier)) value: (call_expression function: (template_function name: (identifier) arguments: (template_argument_list (type_descriptor type: (type_identifier) declarator: (abstract_pointer_declarator)))) arguments: (argument_list (identifier))))) (comment) (declaration type: (primitive_type) declarator: (init_declarator declarator: (pointer_declarator declarator: (identifier)) value: (null))) (declaration type: (type_identifier) declarator: (init_declarator declarator: (pointer_declarator declarator: (identifier)) value: (call_expression function: (template_function name: (identifier) arguments: (template_argument_list (type_descriptor type: (type_identifier) declarator: (abstract_pointer_declarator)))) arguments: (argument_list (identifier))))) (declaration type: (primitive_type) declarator: (init_declarator declarator: (pointer_declarator declarator: (identifier)) value: (call_expression function: (template_function name: (identifier) arguments: (template_argument_list (type_descriptor type: (primitive_type) declarator: (abstract_pointer_declarator)))) arguments: (argument_list (identifier))))) (comment) (declaration type: (primitive_type) declarator: (init_declarator declarator: (identifier) value: (number_literal))) (declaration type: (primitive_type) declarator: (init_declarator declarator: (identifier) value: (call_expression function: (template_function name: (identifier) arguments: (template_argument_list (type_descriptor type: (primitive_type)))) arguments: (argument_list (identifier))))) (comment) (declaration (type_qualifier) type: (primitive_type) declarator: (init_declarator declarator: (identifier) value: (number_literal))) (declaration type: (primitive_type) declarator: (init_declarator declarator: (pointer_declarator declarator: (identifier)) value: (call_expression function: (template_function name: (identifier) arguments: (template_argument_list (type_descriptor type: (primitive_type) declarator: (abstract_pointer_declarator)))) arguments: (argument_list (pointer_expression argument: (identifier)))))) (declaration type: (primitive_type) declarator: (init_declarator declarator: (reference_declarator (identifier)) value: (call_expression function: (template_function name: (identifier) arguments: (template_argument_list (type_descriptor type: (primitive_type) declarator: (abstract_reference_declarator)))) arguments: (argument_list (identifier))))) (return_statement (number_literal)))))
