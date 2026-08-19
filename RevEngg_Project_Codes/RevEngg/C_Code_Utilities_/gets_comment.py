import re
import sys

def comment_gets_lines_in_file(file_path):
    try:
        with open(file_path, 'r') as file:
            c_code = file.read()

            # Regular expression to match scanf statements
            gets_pattern = re.compile(r'\bgets\s*\(.*\)\s*;\s*')
#scanf_pattern = re.compile(r'\bscanf\s*\([^;]*\s*\)\s*;\s*')
            # Find all matches
            matches = gets_pattern.finditer(c_code)

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


if __name__ == "__main__":
    # Check if a file path is provided as a command-line argument
    if len(sys.argv) != 2:
        print("Usage: python script.py <file_path>")
        sys.exit(1)

    file_path = sys.argv[1]
    comment_out_gets_in_file(file_path)
    print(f"Lines containing 'gets' in {file_path} are commented out.")
