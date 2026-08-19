import os
import argparse

def add_standard_libraries(file_name, standard_libraries):
    try:
        # Read the content of the file
        with open(file_name, 'r') as file:
            file_content = file.read()

        # Combine the include statements
        include_statements = '\n'.join(standard_libraries)

        # Insert the include statements at the top of the file
        modified_content = include_statements + '\n\n' + file_content

        # Write the modified content back to the file
        with open(file_name, 'w') as file:
            file.write(modified_content)

        print(f'Standard libraries added to the top of {file_name}.')
    except FileNotFoundError:
        print(f'File not found: {file_name}')
    except Exception as e:
        print(f'An error occurred: {str(e)}')

def main():
    # Set up command-line argument parser
    parser = argparse.ArgumentParser(description='Add standard library includes to the top of a file.')
    parser.add_argument('file_path', help='Path to the file to modify.')
    parser.add_argument('--standard_libraries', help='List of complete include statements.')

    # Parse command-line arguments
    args = parser.parse_args()

    # Call the function with command-line arguments
    add_standard_libraries(args.file_path, args.standard_libraries)

if __name__ == "__main__":
    main()
