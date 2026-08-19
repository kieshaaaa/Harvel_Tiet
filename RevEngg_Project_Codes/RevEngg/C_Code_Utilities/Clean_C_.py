import os
import re

def clean_C(input_file_path):
    # Regular expression to match C-style comments (// and /* */)
    comment_pattern = r'(/\*([^*]|[\r\n]|(\*+([^*/]|[\r\n])))*\*+/)|(//.*)'

    # Regular expression to match C-style string literals
    string_literal_pattern = r'"(?:\\.|[^"\\])*"'

    # Regular expression to match tabs and multiple spaces and replace with a single space
    space_pattern = r'[ \t]+'

    # Regular expression to match and remove empty lines
    empty_line_pattern = r'^\s*$'

    with open(input_file_path, 'r') as input_file:
        code = input_file.read()

    # Replace tabs and multiple spaces with a single space
    cleaned_code = re.sub(space_pattern, ' ', code)
    final_code = re.sub(comment_pattern, '', cleaned_code)
    # Replace string literals with "STR"
    #code_with_str = re.sub(string_literal_pattern, '"STR"', cleaned_code)

    # Remove comments using regular expressions
    #final_code = re.sub(comment_pattern, '', code_with_str)

    # Remove empty lines
    final_code = re.sub(empty_line_pattern, '', final_code, flags=re.MULTILINE)

    with open(input_file_path, 'w') as output_file:
        output_file.write(final_code)

    return input_file_path
#    return os.path.dirname(input_file_path)
if __name__ == "__main__":
    input_file_path = "/path/to/your/input/file.c"
    
    clean_C(input_file_path)

    print("Comments removed, string literals replaced, tabs/spaces normalized, and empty lines removed. File has been cleaned and overwritten.")
