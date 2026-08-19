import os
import re

def clean_C(input_folder, output_folder_):
    output_folder = os.path.join(output_folder_, "cleaned_C")
    # Ensure the output folder exists
    if not os.path.exists(output_folder):
        os.makedirs(output_folder)

    # Regular expression to match C-style comments (// and /* */)
    comment_pattern = r'(/\*([^*]|[\r\n]|(\*+([^*/]|[\r\n])))*\*+/)|(//.*)'

    # Regular expression to match C-style string literals
    string_literal_pattern = r'"(?:\\.|[^"\\])*"'

    # Regular expression to match tabs and multiple spaces and replace with a single space
    space_pattern = r'[ \t]+'

    # Regular expression to match and remove empty lines
    empty_line_pattern = r'^\s*$'

    # Recursively iterate through folders and files in the input folder
    for root, _, files in os.walk(input_folder):
        for filename in files:
            if filename.endswith(".c"):
                input_path = os.path.join(root, filename)
                relative_path = os.path.relpath(input_path, input_folder)
                output_path = os.path.join(output_folder, relative_path)
                print("input_path : ",input_path)
                print("realtive_path : ",relative_path)
                print("output_path : ", output_path)
                # Ensure the output folder structure exists
                output_folder_path = os.path.dirname(output_path)
                os.makedirs(output_folder_path, exist_ok=True)

                # Check if the output file already exists
                if os.path.exists(output_path):
                    raise FileExistsError(f"Output file '{output_path}' already exists in the output folder.")

                with open(input_path, 'r') as input_file:
                    code = input_file.read()

                # Replace tabs and multiple spaces with a single space
                cleaned_code = re.sub(space_pattern, ' ', code)

                # Replace string literals with "STR"
                code_with_str = re.sub(string_literal_pattern, '"STR"', cleaned_code)

                # Remove comments using regular expressions
                final_code = re.sub(comment_pattern, '', code_with_str)

                # Remove empty lines
                final_code = re.sub(empty_line_pattern, '', final_code, flags=re.MULTILINE)

                with open(output_path, 'w') as output_file:
                    output_file.write(final_code)

#if __name__ == "__main__":
#    input_folder_C = "/home/virubuntu/RevEngg_Project/output_gcc_test"
#    output_folder_C = "/home/virubuntu/RevEngg_Project/output_gcc_wc"

#    clean_C(input_folder_C, output_folder_C)

#    print("Comments removed, string literals replaced, tabs/spaces normalized, and empty lines removed. Files saved in the output folders.")
