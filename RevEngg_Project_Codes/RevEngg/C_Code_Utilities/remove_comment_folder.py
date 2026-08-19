import os
import re
import argparse

def remove_comments(file_path):
    try:
        # Read the content of the file
        with open(file_path, 'r') as file:
            file_content = file.read()

        # Remove single-line comments
        file_content = re.sub(r'//.*', '', file_content)

        # Remove multi-line comments
        file_content = re.sub(r'/\*.*?\*/', '', file_content, flags=re.DOTALL)

        # Write the modified content back to the file
        with open(file_path, 'w') as file:
            file.write(file_content)

        print(f'Comments removed from {file_path}.')
    except FileNotFoundError:
        print(f'File not found: {file_path}')
    except Exception as e:
        print(f'An error occurred: {str(e)}')

def remove_comments_in_folder(folder_path):
    # Traverse the folder and process each file
    for root, _, files in os.walk(folder_path):
        for file_name in files:
            file_path = os.path.join(root, file_name)

            # Check if the file is a C code file (assuming it has a .c extension)
            if file_name.endswith('.c'):
                remove_comments(file_path)

def main():
    # Set up command-line argument parser
    parser = argparse.ArgumentParser(description='Remove comments from C code files in a folder.')
    parser.add_argument('folder_path', help='Path to the folder containing files to process.')

    # Parse command-line arguments
    args = parser.parse_args()

    # Call the function with the folder path
    remove_comments_in_folder(args.folder_path)

if __name__ == "__main__":
    main()
