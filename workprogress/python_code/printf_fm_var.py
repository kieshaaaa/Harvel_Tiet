import re

def extract_format_specifiers(input_string):
    # Regular expression to match format specifiers
    format_specifier_pattern = re.compile(r'%[a-zA-Z.*0-9]+')

    # Find all format specifiers in the input string
    format_specifiers = re.findall(format_specifier_pattern, input_string)

    return format_specifiers

# Function to process a C code file and extract printf lines
def process_c_code_file(file_path):
   
    format_specifier = []
    variables = []
    with open(file_path, 'r') as file:
        c_code = file.read()

        # Regular expression to match printf lines
        printf_pattern = re.compile(r'printf\("(.*?)"\s*,\s*(.*?)\)\s*;')

        # Find all printf lines in the C code
        printf_matches = re.findall(printf_pattern, c_code)

        # Print the result
        for match in printf_matches:
            format_s = extract_format_specifiers(match[0])
            # Split the string using ',' as the delimiter
            variable_list  = result_list = [element.strip() for element in match[1].split(',')]
            if len(format_s) == len(variable_list):
                format_specifier.extend(format_s)
                variables.extend(variable_list)
    # Remove "(*" from the start and ")" from the end of each element
    cle_variables = [variable.lstrip('(*').rstrip(')') for variable in variables]
    return format_specifier,cle_variables
if __name__ == "__main__" :
    # Example usage with a C code file
    c_code_file_path = "/home/virubuntu/c_code/printf_all.c"
    process_c_code_file(c_code_file_path)
