import os
import re
import sys

def comment_scanf_lines_in_file(file_path):
    try:
        with open(file_path, 'r') as file:
            c_code = file.read()

            # Regular expression to match scanf statements
            scanf_pattern = re.compile(r'\bscanf\s*\(.*\)\s*;\s*')

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

def comment_scanf_lines_in_folder(folder_path):
    for filename in os.listdir(folder_path):
        if filename.endswith(".c"):
            file_path = os.path.join(folder_path, filename)
            comment_scanf_lines_in_file(file_path)

if __name__ == "__main__":
    # Check if a folder path is provided as a command-line argument
    if len(sys.argv) != 2:
        print("Usage: python script.py <folder_path>")
        sys.exit(1)

    # Get the folder path from the command-line argument
    c_code_folder_path = sys.argv[1]

    # Comment out scanf lines in all C code files in the specified folder
    comment_scanf_lines_in_folder(c_code_folder_path)
