import re

def replace_variable_with_pointer(file_path, data_type, variable_name):
    try:
        # Read the content of the C code file
        with open(file_path, 'r') as file:
            c_code = file.read()

        # Define the regular expression pattern for variable declaration
        #declaration_pattern = re.compile(r'\b{}\s+{}\s*;'.format(re.escape(data_type), re.escape(variable_name)))
    #declaration_pattern = re.compile(r'\b{}\s+{}\s*(?:\[\w*\d*\])?\s*;'.format(re.escape(data_type), re.escape(variable_name)))
        # Replace the variable declaration with an empty string
    #c_code = re.sub(declaration_pattern, '', c_code)

        # Define the regular expression pattern for variable usage
        #usage_pattern = re.compile(r'\b{}\b'.format(re.escape(variable_name)))
        usage_pattern = re.compile(r'\b{}\b(?!\[)'.format(re.escape(variable_name)))
        # Replace the variable usage with "(*{})".format(variable_name)
        c_code = re.sub(usage_pattern, '(*{})'.format(variable_name), c_code)
        
        # Write the modified content back to the file
        with open(file_path, 'w') as file:
            file.write(c_code)

    except FileNotFoundError:
        print(f"Error: File '{file_path}' not found.")

def replace_varible_or_datatype(file_path, datatype, variable_name):
    # Read the content of the file
    with open(file_path, 'r') as file:
        file_content = file.read()

    # Define the regular expression pattern for variable declaration
    #declaration_pattern = re.compile(r'\b{}\s+{}(?:\[\w*\d*\])?(?:\s*=\s*+)?\s*;'.format(re.escape(datatype), re.escape(variable_name)))
    #declaration_pattern = re.compile(r'\b{}\s+{}(?:\[\w*\d*\])?(?:\s*=\s*(?:[\w\d]+|""|\d*))?\s*;'.format(re.escape(datatype), re.escape(variable_name)))
    declaration_pattern = re.compile(r'\b{}\s+{}(?:\[\w*\d*\])?(?:\s*=\s*-?\s*(?:[\w\d]+|""|-?\d+))?\s*;'.format(re.escape(datatype), re.escape(variable_name)))
    # Process declarations in the file content
    processed_content = []
    for line in file_content.split('\n'):
        match = declaration_pattern.search(line)
        if match:
      
            # Extract datatype, variable name, and assignment (if present)
            declaration = match.group()
            
            print("declaration : ",declaration)
            
            # Remove datatype if there is an assignment
            if "=" in declaration:
                #processed_declaration = re.sub(r'\b{}\s+'.format(re.escape(datatype)), '', declaration)
                 processed_declaration = ''
            else:
                # Remove entire declaration if no assignment
                processed_declaration = ''

            # Append the processed declaration to the result
            processed_content.append(processed_declaration)
        else:
            # Keep the original line if no match
            processed_content.append(line)

    # Write the modified content back to the file
    with open(file_path, 'w') as file:
        file.write('\n'.join(processed_content))

if __name__ == "__main__":
    # Check if the correct number of arguments is provided
    if len(sys.argv) != 4:
        print("Usage: python script_name.py <file_path> <datatype> <variable_name>")
    else:
        # Extract command-line arguments
        file_path = sys.argv[1]
        datatype = sys.argv[2]
        variable_name = sys.argv[3]

        # Perform the replacement
        replace_variable_with_pointer(file_path, datatype, variable_name)
        replace_varible_or_datatype(file_path, datatype, variable_name)

    print("Modifications complete. Check the content of the original file for changes.")
