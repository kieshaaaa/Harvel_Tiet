import re
import sys

import os

def generate_testbench_code(variable_list, input_file_path, output_folder):

    modified_list = extract_variable_names(variable_list)
    print("Modified List:")
    print(modified_list)

    testbench_code = "#include <stdio.h>\n"
    
    # Include the input file
    if os.path.exists(input_file_path):
        testbench_code += f'#include "{os.path.basename(input_file_path)}"\n'

    testbench_code += "int main() {\n"
    for variable_declaration in variable_list:
        match = re.match(r'(.+?)\s+(\w+)$', variable_declaration)
        if match:
           data_type = match.group(1)
           variable_name = match.group(2)
           print("data_type : ",data_type)
           print("variable:",variable_name)
           testbench_code += f"    {data_type} {variable_name};\n"

    testbench_code += "\n    entry_point("
    if modified_list:
        testbench_code += ', '.join([f"&{variable_name_}" for variable_name_ in modified_list])
#    testbench_code += ', '.join([variable_name_ for variable_name_ in modified_list])
    testbench_code += ");\n\n    return 0;\n}"

    output_path = os.path.join(output_folder, "testbench_main.c")
    with open(output_path, 'w') as output_file:
        output_file.write(testbench_code)

    return output_path


def extract_variable_names(variable_list):
    try:
        modified_list = [variable.split()[-1] for variable in variable_list]
        return modified_list
    except IndexError:
            print("Warning: IndexError for variable  - skipping.")
    

def extract_entry_point_line(file_path):
    try:
        with open(file_path, 'r') as file:
            content = file.read()

        # Define a pattern to match the entire line with entry_point
        pattern = re.compile(r'\bentry_point.*')

        # Find the entry_point line in the content
        match = pattern.search(content)

        if match:
            print("match:",match)
            return match.group()

    except FileNotFoundError:
        print(f"Error: File not found: {file_path}")
        return None
    except Exception as e:
        print(f"Error: {e}")
        return None

def extract_arguments_from_string(func_signature):
    # Remove starting "entry_point(" and ending ")"
    func_signature = func_signature[len("entry_point("):-1]

    # Split the remaining string on ","
    arguments_list = [arg.strip() for arg in func_signature.split(',')]

    return arguments_list

def remove_chars_from_list(lst):
    return [element.replace('(*', '').replace(')', '') for element in lst]



if __name__ == "__main__":
    # Check if the correct number of command line arguments is provided
    if len(sys.argv) != 2:
        print("Usage: python script.py <file_path>")
        sys.exit(1)

    file_path = sys.argv[1]
    
    # Extract the folder path from the input file path
    output_folder = os.path.dirname(file_path)

    # Call the extract_entry_point_line function with the provided file path
    entry_point_line = extract_entry_point_line(file_path)
    arguments = extract_arguments_from_string(entry_point_line)
    result_list = remove_chars_from_list(arguments) 

    output_path = generate_testbench_code(result_list, file_path, output_folder)
    print(f"Testbench code written to: {output_path}")


#    if entry_point_line:
#        print("Extracted Entry Point Line:")
#        print(entry_point_line)
