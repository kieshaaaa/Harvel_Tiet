# python3 extract_main_code.py /path/to/input_file /path/to/output_folder

import re
import sys
import os
import tempfile
from RevEngg.C_Code_Utilities_ import copy_file
def find_main_function_lines(file_path):
    try:
        with open(file_path, 'r') as file:
            lines = file.readlines()

        main_start_line = None
        count = 0
        count_op = 0

        # Find the line number where the main function starts
        for i, line in enumerate(lines):
            if re.search(r'\b(int|void)\s+main\s*\(', line):
                main_start_line = i + 1  # Line numbers are 1-indexed in Python
                break

        if main_start_line is not None:
            # Scan subsequent lines to find the matching closing curly brace
            for i in range(main_start_line, len(lines) + 1):
                line = lines[i-1]
                print("i in the lines : ",i)
                print("line in the i :",line)
                for char in line:
                    if char == '{':
                        count_op = 1
                        count += 1
                    elif char == '}':
                        count -= 1

                if count_op == 1 :
                    if count == 0:
                        main_end_line = i
                        return main_start_line, main_end_line

        return None, None

    except FileNotFoundError:
        print(f"Error: File not found: {file_path}")
        sys.exit(1)

def final_pass(file_path):
    # Your implementation of the final pass function
    # Replace this with your actual implementation
    print(f"Final pass executed on file: {file_path}")


def get_temp_file(input_file_path,output_folder):
    temp_file_path = None  # Initialize with a default value
    start_line, end_line = find_main_function_lines(input_file_path)

    if start_line is not None and end_line is not None:
        # Write main function code to a temporary file
        temp_file_path = os.path.join(output_folder, 'temp_main_function.c')
        with open(temp_file_path, 'w') as temp_file:
            with open(input_file_path, 'r') as file:
                lines = file.readlines()
                temp_file.write(''.join(lines[start_line - 1:end_line]))

        print(f"Main Function Code (Lines {start_line}-{end_line}) written to temp file: {temp_file_path}")

        return temp_file_path, start_line, end_line        

    else:
        print("Main function not found in the provided code. ho")
        copy_file.delete_file(temp_file_path)
    return None, 0, 0

if __name__ == "__main__":
    # Check if the correct number of command line arguments is provided
    if len(sys.argv) != 3:
        print("Usage: python script.py <input_file_path> <output_folder>")
        sys.exit(1)

    input_file_path = sys.argv[1]
    output_folder = sys.argv[2]

    # Check if the output folder exists, create it if not
    if not os.path.exists(output_folder):
        os.makedirs(output_folder)

    get_temp_file(input_file_path, output_folder)
