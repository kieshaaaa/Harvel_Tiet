import sys
import re
import modify_c_code
def extract_variable_declaration(input_code):
    # Define a regular expression pattern to capture variable declarations
    #pattern = re.compile(r'(\b(int|float|char)\s+([\w\s,]+);)')
    #pattern = re.compile(r'(\b(int|float|char)\s+([a-zA-Z_]\w*\s*(?:\[\d*\])?\s*(?:,\s*[a-zA-Z_]\w*\s*(?:\[\d*\])?)*)\s*;)')    
    #pattern = re.compile(r'(\b(int|float|char|unsigned int)\s+([a-zA-Z_]\w*(?:\s*=\s*[^;,]+)?\s*(?:,\s*[a-zA-Z_]\w*(?:\s*=\s*[^;,]+)?)*)\s*;)')
    pattern = re.compile(r'(\b(int|float|char|double|unsigned\s+int|long\s+int)\s+([a-zA-Z_]\w*(?:\s*\[\d*\])?(?:\s*=\s*[^;,]+)?\s*(?:,\s*[a-zA-Z_]\w*(?:\s*\[\d*\])?(?:\s*=\s*[^;,]+)?)*)\s*;)')
    #pattern = re.compile(r'^\s*(?!.*\bfor\b)(\b(int|float|char|unsigned\s+int)\s+([a-zA-Z_]\w*(?:\s*\[\d*\])?(?:\s*=\s*[^;,]+)?(?:\s*,\s*[a-zA-Z_]\w*(?:\s*\[\d*\])?(?:\s*=\s*[^;,]+)?)*)\s*;)', re.MULTILINE)

    # Find all matches in the input code with line numbers
    matches = [(match.group(), match.start(), match.end(), match.start(2), match.end(2), match.start(3), match.end(3)) 
               for match in pattern.finditer(input_code)]
  
    # Extract datatype, variable names, and line numbers
    variable_declarations = []
    for match in matches:
        declaration, start, end, datatype_start, datatype_end, var_start, var_end = match
        # Use the matched datatype directly
        datatype = input_code[datatype_start:datatype_end]
        print(datatype)
#        datatype = input_code[datatype_start:datatype_end].split()[0].strip()
        variables = [var.strip() for var in input_code[var_start:var_end].split(',')]
        # Find the line number of the declaration
        line_number = input_code.count('\n', 0, start) + 1

        variable_declarations.append({
            'line_number': line_number,
            'datatype': datatype,
            'variables': variables
        })
    print("variable_declarations :",variable_declarations)
    return variable_declarations

def extract_variables_from_c_file(file_path):
    with open(file_path, 'r') as file:
        c_code = file.read()
        result = extract_variable_declaration(c_code)
        return result

def def_seperate_datatype(c_file_path):
    print("c_file_path_inseperate_var file",c_file_path)
    result = extract_variables_from_c_file(c_file_path) 
    count_line = 0
    for declaration in result:
        print(f'print the count: {count_line}')
        print(f'Declaration :{declaration}')
        line_number = declaration["line_number"] + count_line
        print(f'line_number to sent: {line_number}')
        count_line = modify_c_code.seperate_datatype(c_file_path, line_number, declaration["datatype"], declaration["variables"], count_line)
        print(f' line number return by function :{count_line}')
#       print(f'Line Number: {declaration["line_number"]}')
#       print(f'Datatype: {declaration["datatype"]}')
#       print(f'Variables: {declaration["variables"]}')
        print()


if __name__ == "__main__":
    # Check if the correct number of command-line arguments is provided
    if len(sys.argv) != 2:
        print("Usage: python script_name.py <c_file_path>")
        sys.exit(1)

    # Get the file path from the command-line arguments
    c_file_path = sys.argv[1]

    # Call the function with the provided file path
    def_seperate_datatype(c_file_path)
