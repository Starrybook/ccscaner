translation_unit:  [>>  b'#include <stdexcept>\nvoid processFile(const std::string &filename)\n{\n}\n\nint main()\n{\n    try\n    {\n        processFile("example.txt");\n    }\n    catch (const std::invalid_argument &e)\n    {\n    }\n    catch (const std::runtime_error &e)\n    {\n    }\n    catch (...)\n    {\n    }\n    return 0;\n}\n'  <<]
  preproc_include:  [>>  b'#include <stdexcept>\n'  <<]
    #include
    system_lib_string:  [>>  b'<stdexcept>'  <<]
  function_definition:  [>>  b'void processFile(const std::string &filename)\n{\n}'  <<]
    primitive_type:  [>>  b'void'  <<]
    function_declarator:  [>>  b'processFile(const std::string &filename)'  <<]
      identifier:  [>>  b'processFile'  <<]
      parameter_list:  [>>  b'(const std::string &filename)'  <<]
        (
        parameter_declaration:  [>>  b'const std::string &filename'  <<]
          type_qualifier:  [>>  b'const'  <<]
            const
          qualified_identifier:  [>>  b'std::string'  <<]
            namespace_identifier:  [>>  b'std'  <<]
            ::
            type_identifier:  [>>  b'string'  <<]
          reference_declarator:  [>>  b'&filename'  <<]
            &
            identifier:  [>>  b'filename'  <<]
        )
    compound_statement:  [>>  b'{\n}'  <<]
      {
      }
  function_definition:  [>>  b'int main()\n{\n    try\n    {\n        processFile("example.txt");\n    }\n    catch (const std::invalid_argument &e)\n    {\n    }\n    catch (const std::runtime_error &e)\n    {\n    }\n    catch (...)\n    {\n    }\n    return 0;\n}'  <<]
    primitive_type:  [>>  b'int'  <<]
    function_declarator:  [>>  b'main()'  <<]
      identifier:  [>>  b'main'  <<]
      parameter_list:  [>>  b'()'  <<]
        (
        )
    compound_statement:  [>>  b'{\n    try\n    {\n        processFile("example.txt");\n    }\n    catch (const std::invalid_argument &e)\n    {\n    }\n    catch (const std::runtime_error &e)\n    {\n    }\n    catch (...)\n    {\n    }\n    return 0;\n}'  <<]
      {
      try_statement:  [>>  b'try\n    {\n        processFile("example.txt");\n    }\n    catch (const std::invalid_argument &e)\n    {\n    }\n    catch (const std::runtime_error &e)\n    {\n    }\n    catch (...)\n    {\n    }'  <<]
        try
        compound_statement:  [>>  b'{\n        processFile("example.txt");\n    }'  <<]
          {
          expression_statement:  [>>  b'processFile("example.txt");'  <<]
            call_expression:  [>>  b'processFile("example.txt")'  <<]
              identifier:  [>>  b'processFile'  <<]
              argument_list:  [>>  b'("example.txt")'  <<]
                (
                string_literal:  [>>  b'"example.txt"'  <<]
                  "
                  string_content:  [>>  b'example.txt'  <<]
                  "
                )
            ;
          }
        catch_clause:  [>>  b'catch (const std::invalid_argument &e)\n    {\n    }'  <<]
          catch
          parameter_list:  [>>  b'(const std::invalid_argument &e)'  <<]
            (
            parameter_declaration:  [>>  b'const std::invalid_argument &e'  <<]
              type_qualifier:  [>>  b'const'  <<]
                const
              qualified_identifier:  [>>  b'std::invalid_argument'  <<]
                namespace_identifier:  [>>  b'std'  <<]
                ::
                type_identifier:  [>>  b'invalid_argument'  <<]
              reference_declarator:  [>>  b'&e'  <<]
                &
                identifier:  [>>  b'e'  <<]
            )
          compound_statement:  [>>  b'{\n    }'  <<]
            {
            }
        catch_clause:  [>>  b'catch (const std::runtime_error &e)\n    {\n    }'  <<]
          catch
          parameter_list:  [>>  b'(const std::runtime_error &e)'  <<]
            (
            parameter_declaration:  [>>  b'const std::runtime_error &e'  <<]
              type_qualifier:  [>>  b'const'  <<]
                const
              qualified_identifier:  [>>  b'std::runtime_error'  <<]
                namespace_identifier:  [>>  b'std'  <<]
                ::
                type_identifier:  [>>  b'runtime_error'  <<]
              reference_declarator:  [>>  b'&e'  <<]
                &
                identifier:  [>>  b'e'  <<]
            )
          compound_statement:  [>>  b'{\n    }'  <<]
            {
            }
        catch_clause:  [>>  b'catch (...)\n    {\n    }'  <<]
          catch
          parameter_list:  [>>  b'(...)'  <<]
            (
            ...
            )
          compound_statement:  [>>  b'{\n    }'  <<]
            {
            }
      return_statement:  [>>  b'return 0;'  <<]
        return
        number_literal:  [>>  b'0'  <<]
        ;
      }
(translation_unit (preproc_include path: (system_lib_string)) (function_definition type: (primitive_type) declarator: (function_declarator declarator: (identifier) parameters: (parameter_list (parameter_declaration (type_qualifier) type: (qualified_identifier scope: (namespace_identifier) name: (type_identifier)) declarator: (reference_declarator (identifier))))) body: (compound_statement)) (function_definition type: (primitive_type) declarator: (function_declarator declarator: (identifier) parameters: (parameter_list)) body: (compound_statement (try_statement body: (compound_statement (expression_statement (call_expression function: (identifier) arguments: (argument_list (string_literal (string_content)))))) (catch_clause parameters: (parameter_list (parameter_declaration (type_qualifier) type: (qualified_identifier scope: (namespace_identifier) name: (type_identifier)) declarator: (reference_declarator (identifier)))) body: (compound_statement)) (catch_clause parameters: (parameter_list (parameter_declaration (type_qualifier) type: (qualified_identifier scope: (namespace_identifier) name: (type_identifier)) declarator: (reference_declarator (identifier)))) body: (compound_statement)) (catch_clause parameters: (parameter_list) body: (compound_statement))) (return_statement (number_literal)))))
