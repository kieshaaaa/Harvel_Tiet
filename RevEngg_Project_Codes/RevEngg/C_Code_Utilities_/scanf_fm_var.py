import sys
import re

def remove_ampersand_from_list(lst):
    # Use list comprehension to remove "&" from the beginning of each string
    modified_list = [item.lstrip('&') for item in lst]

#    modified_list = [item.replace('&', '*', 1) for item in lst]
    return modified_list

def fetch_scanf_from_c_file(file_path):
    try:
        format_specifier = []
        variable = []
        # Read the content of the C code file
        with open(file_path, 'r') as file:
            c_code = file.read()

        # Define the regular expression pattern to match scanf statements
        scanf_pattern = r'\bscanf\s*\(\s*\"([^"]*)\"\s*,\s*([^)]*)\s*\)\s*;'
        #scanf_pattern = r'\bscanf\s*\(\s*\"([^\"]*)\"\s*,\s*([^)]*)\s*\)\s*;'
        # Find all scanf statements in the C code
        scanf_matches = re.finditer(scanf_pattern, c_code)

        # Process each match
        for match in scanf_matches:
            format_string = match.group(1)
            variables = match.group(2).split(',')

            # Clean up the format string and variable names
            format_string = format_string.replace('%%', '')  # Remove %%
            format_string = format_string.strip()

            variables = [var.strip() for var in variables]

            # Define the regular expression pattern to match format specifiers
            format_specifier_pattern = r'%[a-zA-Z]+'

            # Find all format specifiers in the statement
            format_specifiers = re.findall(format_specifier_pattern, format_string)

            for format in format_specifiers:
                format_specifier.append(format)
            for var in variables:
                variable.append(var)

        vari = remove_ampersand_from_list(variable)    
        return format_specifier,vari
    except FileNotFoundError:
        print(f"Error: File '{file_path}' not found.")

if __name__ == "__main__":
    # Check if the correct number of command-line arguments is provided
    if len(sys.argv) != 2:
        print("Usage: python script_name.py <c_file_path>")
        sys.exit(1)

    # Get the file path from the command-line arguments
    file_path = sys.argv[1]

    # Example usage
    format_strings, variables = fetch_scanf_from_c_file(file_path)
    print("Format Strings:", format_strings)
    print("Variables:", variables)
