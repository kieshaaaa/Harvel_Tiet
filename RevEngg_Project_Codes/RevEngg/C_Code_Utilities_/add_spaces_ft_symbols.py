import os
import re
import sys

def modify_files(folder):
    # Check if the provided folder exists
    if not os.path.exists(folder):
        print("Error: Folder not found.")
        return

    # Fetch .c files in the folder
    c_files = [file for file in os.listdir(folder) if file.endswith(".c")]

    # Define the regex pattern for the special symbols
    pattern = r'([(){};,\[\]])'
#    pattern = r'([{};,])'
    # Iterate through each .c file and modify special symbols using regex
    for file in c_files:
        file_path = os.path.join(folder, file)
        
        with open(file_path, 'r') as f:
            content = f.read()

        # Use re.sub to add spaces around the special symbols
        modified_content = re.sub(pattern, r' \1 ', content)

        with open(file_path, 'w') as f:
            f.write(modified_content)

        print(f"Modified {file_path}")

    print(f"Added spaces in front and back of the symbols at folder {folder}!")

if __name__ == "__main__":
    # Check if a folder path is provided as a command line argument
    if len(sys.argv) != 2:
        print("Usage: python script.py <folder>")
        sys.exit(1)

    folder_path = sys.argv[1]
    modify_files(folder_path)
