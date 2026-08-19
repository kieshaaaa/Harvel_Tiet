import os
import re
import argparse

def collect_stdlib_names(folder_path):
    stdlib_names = set()

    # Define the modified #include pattern with .h requirement
    predefined_includes = [
        r'#include\s*<\s*.*\.h\s*>'
        # Add more standard library includes if needed
    ]

    # Compile the regular expression
    include_pattern = re.compile(predefined_includes[0])

    # Traverse the folder and scan files
    for root, _, files in os.walk(folder_path):
        for file_name in files:
            file_path = os.path.join(root, file_name)

            # Read the content of the file
            with open(file_path, 'r') as file:
                file_content = file.read()

            # Search for the modified #include pattern
            matches = include_pattern.findall(file_content)
            stdlib_names.update(matches)

            # Remove standard library includes from the file
            file_content = re.sub(include_pattern, '', file_content)

            # Write the modified content back to the file
            with open(file_path, 'w') as file:
                file.write(file_content)
    print(list(stdlib_names))
    return list(stdlib_names)

def main():
    # Set up command-line argument parser
    parser = argparse.ArgumentParser(description='Remove standard library includes from files in a folder.')
    parser.add_argument('folder_path', help='Path to the folder containing files to process.')

    # Parse command-line arguments
    args = parser.parse_args()

    # Collect standard library names and remove includes
    stdlib_names = collect_stdlib_names(args.folder_path)

    print(f"Standard library names found: {stdlib_names}")
    print("Standard library includes removed from files.")

if __name__ == "__main__":
    main()
