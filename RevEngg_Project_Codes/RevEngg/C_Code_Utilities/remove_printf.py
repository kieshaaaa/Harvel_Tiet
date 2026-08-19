import os
import re

def replace_printf_with_semicolon_in_files(folder_path):
    for root, dirs, files in os.walk(folder_path):
        for file in files:
            if file.endswith(".c"):
                file_path = os.path.join(root, file)
                with open(file_path, 'r') as f:
                    lines = f.readlines()

                with open(file_path, 'w') as f:
                    for line in lines:
                        if re.search(r'\bprintf\s*\(', line):
                            # Add "; //" in front of the printf line
                            f.write("; //" + line)
                            print("printf found ")
                        else:
                            f.write(line)


def replace_printf_statements_in_folder(folder_path):
    # Regular expression to match printf statements
    printf_pattern = re.compile(r'printf\s*\(\s*["\']\s*(.*?)\s*["\']\s*,\s*(.*?)\s*\)\s*;')

    # Iterate through all files in the folder
    for root, dirs, files in os.walk(folder_path):
        for file_name in files:
            file_path = os.path.join(root, file_name)

            # Process each file
            with open(file_path, 'r') as file:
                code_content = file.read()

            # Replace printf statements with ;
            modified_code = re.sub(printf_pattern, ';', code_content)

            # Write the modified code back to the file
            with open(file_path, 'w') as file:
                file.write(modified_code)


if __name__ == "__main__":
    folder_path = "path_to_folder"  # Replace with the path to your folder containing C files
    replace_printf_with_semicolon_in_files(folder_path)
    print("'; //' added in front of printf lines in C files within the folder.")

