translation_unit:  [>>  b'using func = void (*) (int, int);\nvoid example(int, int) {}\nfunc f = example;\n\ntemplate <typename T>\nusing MyVector = std::vector<T>;\n\ntemplate <typename Key, typename Value, typename Container>\nclass KeyValueStore {\nprivate:\n    std::vector<std::pair<Key, Value>, Container> data;\n};\n\ntemplate <typename T>\nusing MapKeyValueStore = KeyValueStore<std::string, T, std::map<std::string, T>>;\ntemplate <typename T>\nusing VectorKeyValueStore = KeyValueStore<int, T, std::vector<std::pair<int, T>>>;\n'  <<]
  alias_declaration:  [>>  b'using func = void (*) (int, int);'  <<]
    using
    type_identifier:  [>>  b'func'  <<]
    =
    type_descriptor:  [>>  b'void (*) (int, int)'  <<]
      primitive_type:  [>>  b'void'  <<]
      abstract_function_declarator:  [>>  b'(*) (int, int)'  <<]
        abstract_parenthesized_declarator:  [>>  b'(*)'  <<]
          (
          abstract_pointer_declarator:  [>>  b'*'  <<]
            *
          )
        parameter_list:  [>>  b'(int, int)'  <<]
          (
          parameter_declaration:  [>>  b'int'  <<]
            primitive_type:  [>>  b'int'  <<]
          ,
          parameter_declaration:  [>>  b'int'  <<]
            primitive_type:  [>>  b'int'  <<]
          )
    ;
  function_definition:  [>>  b'void example(int, int) {}'  <<]
    primitive_type:  [>>  b'void'  <<]
    function_declarator:  [>>  b'example(int, int)'  <<]
      identifier:  [>>  b'example'  <<]
      parameter_list:  [>>  b'(int, int)'  <<]
        (
        parameter_declaration:  [>>  b'int'  <<]
          primitive_type:  [>>  b'int'  <<]
        ,
        parameter_declaration:  [>>  b'int'  <<]
          primitive_type:  [>>  b'int'  <<]
        )
    compound_statement:  [>>  b'{}'  <<]
      {
      }
  declaration:  [>>  b'func f = example;'  <<]
    type_identifier:  [>>  b'func'  <<]
    init_declarator:  [>>  b'f = example'  <<]
      identifier:  [>>  b'f'  <<]
      =
      identifier:  [>>  b'example'  <<]
    ;
  template_declaration:  [>>  b'template <typename T>\nusing MyVector = std::vector<T>;'  <<]
    template
    template_parameter_list:  [>>  b'<typename T>'  <<]
      <
      type_parameter_declaration:  [>>  b'typename T'  <<]
        typename
        type_identifier:  [>>  b'T'  <<]
      >
    alias_declaration:  [>>  b'using MyVector = std::vector<T>;'  <<]
      using
      type_identifier:  [>>  b'MyVector'  <<]
      =
      type_descriptor:  [>>  b'std::vector<T>'  <<]
        qualified_identifier:  [>>  b'std::vector<T>'  <<]
          namespace_identifier:  [>>  b'std'  <<]
          ::
          template_type:  [>>  b'vector<T>'  <<]
            type_identifier:  [>>  b'vector'  <<]
            template_argument_list:  [>>  b'<T>'  <<]
              <
              type_descriptor:  [>>  b'T'  <<]
                type_identifier:  [>>  b'T'  <<]
              >
      ;
  template_declaration:  [>>  b'template <typename Key, typename Value, typename Container>\nclass KeyValueStore {\nprivate:\n    std::vector<std::pair<Key, Value>, Container> data;\n};'  <<]
    template
    template_parameter_list:  [>>  b'<typename Key, typename Value, typename Container>'  <<]
      <
      type_parameter_declaration:  [>>  b'typename Key'  <<]
        typename
        type_identifier:  [>>  b'Key'  <<]
      ,
      type_parameter_declaration:  [>>  b'typename Value'  <<]
        typename
        type_identifier:  [>>  b'Value'  <<]
      ,
      type_parameter_declaration:  [>>  b'typename Container'  <<]
        typename
        type_identifier:  [>>  b'Container'  <<]
      >
    class_specifier:  [>>  b'class KeyValueStore {\nprivate:\n    std::vector<std::pair<Key, Value>, Container> data;\n}'  <<]
      class
      type_identifier:  [>>  b'KeyValueStore'  <<]
      field_declaration_list:  [>>  b'{\nprivate:\n    std::vector<std::pair<Key, Value>, Container> data;\n}'  <<]
        {
        access_specifier:  [>>  b'private'  <<]
          private
        :
        field_declaration:  [>>  b'std::vector<std::pair<Key, Value>, Container> data;'  <<]
          qualified_identifier:  [>>  b'std::vector<std::pair<Key, Value>, Container>'  <<]
            namespace_identifier:  [>>  b'std'  <<]
            ::
            template_type:  [>>  b'vector<std::pair<Key, Value>, Container>'  <<]
              type_identifier:  [>>  b'vector'  <<]
              template_argument_list:  [>>  b'<std::pair<Key, Value>, Container>'  <<]
                <
                type_descriptor:  [>>  b'std::pair<Key, Value>'  <<]
                  qualified_identifier:  [>>  b'std::pair<Key, Value>'  <<]
                    namespace_identifier:  [>>  b'std'  <<]
                    ::
                    template_type:  [>>  b'pair<Key, Value>'  <<]
                      type_identifier:  [>>  b'pair'  <<]
                      template_argument_list:  [>>  b'<Key, Value>'  <<]
                        <
                        type_descriptor:  [>>  b'Key'  <<]
                          type_identifier:  [>>  b'Key'  <<]
                        ,
                        type_descriptor:  [>>  b'Value'  <<]
                          type_identifier:  [>>  b'Value'  <<]
                        >
                ,
                type_descriptor:  [>>  b'Container'  <<]
                  type_identifier:  [>>  b'Container'  <<]
                >
          field_identifier:  [>>  b'data'  <<]
          ;
        }
    ;
  template_declaration:  [>>  b'template <typename T>\nusing MapKeyValueStore = KeyValueStore<std::string, T, std::map<std::string, T>>;'  <<]
    template
    template_parameter_list:  [>>  b'<typename T>'  <<]
      <
      type_parameter_declaration:  [>>  b'typename T'  <<]
        typename
        type_identifier:  [>>  b'T'  <<]
      >
    alias_declaration:  [>>  b'using MapKeyValueStore = KeyValueStore<std::string, T, std::map<std::string, T>>;'  <<]
      using
      type_identifier:  [>>  b'MapKeyValueStore'  <<]
      =
      type_descriptor:  [>>  b'KeyValueStore<std::string, T, std::map<std::string, T>>'  <<]
        template_type:  [>>  b'KeyValueStore<std::string, T, std::map<std::string, T>>'  <<]
          type_identifier:  [>>  b'KeyValueStore'  <<]
          template_argument_list:  [>>  b'<std::string, T, std::map<std::string, T>>'  <<]
            <
            type_descriptor:  [>>  b'std::string'  <<]
              qualified_identifier:  [>>  b'std::string'  <<]
                namespace_identifier:  [>>  b'std'  <<]
                ::
                type_identifier:  [>>  b'string'  <<]
            ,
            type_descriptor:  [>>  b'T'  <<]
              type_identifier:  [>>  b'T'  <<]
            ,
            type_descriptor:  [>>  b'std::map<std::string, T>'  <<]
              qualified_identifier:  [>>  b'std::map<std::string, T>'  <<]
                namespace_identifier:  [>>  b'std'  <<]
                ::
                template_type:  [>>  b'map<std::string, T>'  <<]
                  type_identifier:  [>>  b'map'  <<]
                  template_argument_list:  [>>  b'<std::string, T>'  <<]
                    <
                    type_descriptor:  [>>  b'std::string'  <<]
                      qualified_identifier:  [>>  b'std::string'  <<]
                        namespace_identifier:  [>>  b'std'  <<]
                        ::
                        type_identifier:  [>>  b'string'  <<]
                    ,
                    type_descriptor:  [>>  b'T'  <<]
                      type_identifier:  [>>  b'T'  <<]
                    >
            >
      ;
  template_declaration:  [>>  b'template <typename T>\nusing VectorKeyValueStore = KeyValueStore<int, T, std::vector<std::pair<int, T>>>;'  <<]
    template
    template_parameter_list:  [>>  b'<typename T>'  <<]
      <
      type_parameter_declaration:  [>>  b'typename T'  <<]
        typename
        type_identifier:  [>>  b'T'  <<]
      >
    alias_declaration:  [>>  b'using VectorKeyValueStore = KeyValueStore<int, T, std::vector<std::pair<int, T>>>;'  <<]
      using
      type_identifier:  [>>  b'VectorKeyValueStore'  <<]
      =
      type_descriptor:  [>>  b'KeyValueStore<int, T, std::vector<std::pair<int, T>>>'  <<]
        template_type:  [>>  b'KeyValueStore<int, T, std::vector<std::pair<int, T>>>'  <<]
          type_identifier:  [>>  b'KeyValueStore'  <<]
          template_argument_list:  [>>  b'<int, T, std::vector<std::pair<int, T>>>'  <<]
            <
            type_descriptor:  [>>  b'int'  <<]
              primitive_type:  [>>  b'int'  <<]
            ,
            type_descriptor:  [>>  b'T'  <<]
              type_identifier:  [>>  b'T'  <<]
            ,
            type_descriptor:  [>>  b'std::vector<std::pair<int, T>>'  <<]
              qualified_identifier:  [>>  b'std::vector<std::pair<int, T>>'  <<]
                namespace_identifier:  [>>  b'std'  <<]
                ::
                template_type:  [>>  b'vector<std::pair<int, T>>'  <<]
                  type_identifier:  [>>  b'vector'  <<]
                  template_argument_list:  [>>  b'<std::pair<int, T>>'  <<]
                    <
                    type_descriptor:  [>>  b'std::pair<int, T>'  <<]
                      qualified_identifier:  [>>  b'std::pair<int, T>'  <<]
                        namespace_identifier:  [>>  b'std'  <<]
                        ::
                        template_type:  [>>  b'pair<int, T>'  <<]
                          type_identifier:  [>>  b'pair'  <<]
                          template_argument_list:  [>>  b'<int, T>'  <<]
                            <
                            type_descriptor:  [>>  b'int'  <<]
                              primitive_type:  [>>  b'int'  <<]
                            ,
                            type_descriptor:  [>>  b'T'  <<]
                              type_identifier:  [>>  b'T'  <<]
                            >
                    >
            >
      ;
(translation_unit (alias_declaration name: (type_identifier) type: (type_descriptor type: (primitive_type) declarator: (abstract_function_declarator declarator: (abstract_parenthesized_declarator (abstract_pointer_declarator)) parameters: (parameter_list (parameter_declaration type: (primitive_type)) (parameter_declaration type: (primitive_type)))))) (function_definition type: (primitive_type) declarator: (function_declarator declarator: (identifier) parameters: (parameter_list (parameter_declaration type: (primitive_type)) (parameter_declaration type: (primitive_type)))) body: (compound_statement)) (declaration type: (type_identifier) declarator: (init_declarator declarator: (identifier) value: (identifier))) (template_declaration parameters: (template_parameter_list (type_parameter_declaration (type_identifier))) (alias_declaration name: (type_identifier) type: (type_descriptor type: (qualified_identifier scope: (namespace_identifier) name: (template_type name: (type_identifier) arguments: (template_argument_list (type_descriptor type: (type_identifier)))))))) (template_declaration parameters: (template_parameter_list (type_parameter_declaration (type_identifier)) (type_parameter_declaration (type_identifier)) (type_parameter_declaration (type_identifier))) (class_specifier name: (type_identifier) body: (field_declaration_list (access_specifier) (field_declaration type: (qualified_identifier scope: (namespace_identifier) name: (template_type name: (type_identifier) arguments: (template_argument_list (type_descriptor type: (qualified_identifier scope: (namespace_identifier) name: (template_type name: (type_identifier) arguments: (template_argument_list (type_descriptor type: (type_identifier)) (type_descriptor type: (type_identifier)))))) (type_descriptor type: (type_identifier))))) declarator: (field_identifier))))) (template_declaration parameters: (template_parameter_list (type_parameter_declaration (type_identifier))) (alias_declaration name: (type_identifier) type: (type_descriptor type: (template_type name: (type_identifier) arguments: (template_argument_list (type_descriptor type: (qualified_identifier scope: (namespace_identifier) name: (type_identifier))) (type_descriptor type: (type_identifier)) (type_descriptor type: (qualified_identifier scope: (namespace_identifier) name: (template_type name: (type_identifier) arguments: (template_argument_list (type_descriptor type: (qualified_identifier scope: (namespace_identifier) name: (type_identifier))) (type_descriptor type: (type_identifier))))))))))) (template_declaration parameters: (template_parameter_list (type_parameter_declaration (type_identifier))) (alias_declaration name: (type_identifier) type: (type_descriptor type: (template_type name: (type_identifier) arguments: (template_argument_list (type_descriptor type: (primitive_type)) (type_descriptor type: (type_identifier)) (type_descriptor type: (qualified_identifier scope: (namespace_identifier) name: (template_type name: (type_identifier) arguments: (template_argument_list (type_descriptor type: (qualified_identifier scope: (namespace_identifier) name: (template_type name: (type_identifier) arguments: (template_argument_list (type_descriptor type: (primitive_type)) (type_descriptor type: (type_identifier))))))))))))))))
