import sys

def insert_code(input_file_path, start_line, end_line, code_file_path):
    try:
        # Read the content of the code file
        with open(code_file_path, 'r') as code_file:
            code_content = code_file.read()

        # Read the content of the input file
        with open(input_file_path, 'r') as input_file:
            lines = input_file.readlines()

        # Remove lines between start_line and end_line (inclusive)
        del lines[start_line - 1:end_line]

        # Insert the code content at the specified start_line
        lines[start_line - 1:start_line - 1] = code_content.splitlines()

        # Write the modified content back to the input file
        with open(input_file_path, 'w') as input_file:
            input_file.write('\n'.join(lines))

        print(f"Code inserted successfully in {input_file_path}")

    except FileNotFoundError:
        print(f"Error: File not found.")
    except Exception as e:
        print(f"Error: {e}")

if __name__ == "__main__":
    # Check if the correct number of command line arguments is provided
    if len(sys.argv) != 5:
        print("Usage: python script.py <input_file_path> <start_line> <end_line> <code_file_path>")
        sys.exit(1)

    input_file_path = sys.argv[1]
    start_line = int(sys.argv[2])
    end_line = int(sys.argv[3])
    code_file_path = sys.argv[4]

    insert_code(input_file_path, start_line, end_line, code_file_path)
