import re

def extract_pointers(input_code):
    # Regular expression to match (*variable_name)
    pointer_pattern = re.compile(r'\(\*(\w+)\)')

    # Find all matches in the input code
    pointer_matches = re.findall(pointer_pattern, input_code)

    return pointer_matches

def extract_pointers_main(c_file):

    with open(c_file, 'r') as file:
        c_code = file.read()

    # Extract pointers from the C code
    pointer_variables = extract_pointers(c_code)
    # Remove duplicates by converting to set and back to list
    unique_pointer_variable = list(set(pointer_variables))
    # Print the list of extracted variables
    return unique_pointer_variable

if __name__ == "__main__":
    # Read C code from a file
    c_file_ = '/home/virubuntu/c_code/c_code_RV/codezclub_55/55_c.c'
    extract_pointers_main(c_file_)
