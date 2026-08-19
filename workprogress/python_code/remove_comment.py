import re
import sys

def remove_comments(c_code):
    # Remove single-line comments
    c_code = re.sub(r'\/\/[^\n]*', '', c_code)
    
    # Remove multi-line comments
    c_code = re.sub(r'\/\*.*?\*\/', '', c_code, flags=re.DOTALL)

    return c_code

def process_file(file_path):
    try:
        with open(file_path, 'r') as file:
            c_code_with_comments = file.read()
            c_code_without_comments = remove_comments(c_code_with_comments)

        # Write the modified code back to the same file
        with open(file_path, 'w') as file:
            file.write(c_code_without_comments)
            
    except FileNotFoundError:
        print(f"Error: File '{file_path}' not found.")
    except Exception as e:
        print(f"An error occurred: {e}")

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python remove_comments.py <file_path>")
    else:
        file_path = sys.argv[1]
        process_file(file_path)
