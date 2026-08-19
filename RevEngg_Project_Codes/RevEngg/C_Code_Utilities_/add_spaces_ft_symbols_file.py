import os
import re
import sys

def modify_file(file_path):
    # Check if the provided file exists
    if not os.path.exists(file_path):
        print("Error: File not found.")
        return

    # Define the regex pattern for the special symbols
    pattern = r'([(){};,\[\]])'
    #    pattern = r'([{};,])'

    with open(file_path, 'r') as f:
        content = f.read()

    # Use re.sub to add spaces around the special symbols
    modified_content = re.sub(pattern, r' \1 ', content)

    with open(file_path, 'w') as f:
        f.write(modified_content)

    print(f"Modified {file_path}")
    print(f"Added spaces in front and back of the symbols in {file_path}!")

if __name__ == "__main__":
    # Check if a file path is provided as a command line argument
    if len(sys.argv) != 2:
        print("Usage: python script.py <file>")
        sys.exit(1)

    file_path = sys.argv[1]
    modify_file(file_path)
