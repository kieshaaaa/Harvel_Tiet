import re

def comment_scanf_lines_in_file(file_path):
    try:
        with open(file_path, 'r') as file:
            c_code = file.read()

            # Regular expression to match scanf statements
            scanf_pattern = re.compile(r'\bscanf\s*\(.*\)\s*;\s*')
#scanf_pattern = re.compile(r'\bscanf\s*\([^;]*\s*\)\s*;\s*')
            # Find all matches
            matches = scanf_pattern.finditer(c_code)

            # Comment out each scanf line
            commented_code = c_code
            for match in matches:
                start, end = match.span()
                commented_code = commented_code[:start] + '//' + c_code[start:end] + commented_code[end:]

            # Write the modified code back to the file
            with open(file_path, 'w') as modified_file:
                modified_file.write(commented_code)

    except FileNotFoundError:
        print(f"Error: File '{file_path}' not found.")


if __name__ == "__main__":
    # Example: Specify the path to your C code file
    c_code_file_path = "/home/virubuntu/c_code/test_scanf_printf_.c"

    # Comment out scanf lines in the specified C code file
    comment_scanf_lines_in_file(c_code_file_path)
