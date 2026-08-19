import re
import sys

def extract_number(filename):
    """
    Extract the numerical part from the filename.
    """
    match = re.search(r'file(\d+)_c\.txt', filename)
    return int(match.group(1)) if match else None

def sort_file_paths(file_path):
    with open(file_path, 'r') as file:
        lines = file.readlines()
    
    # Extract numbers and sort lines based on these numbers
    sorted_lines = sorted(lines, key=lambda line: extract_number(line))
    
    # Write sorted lines back to the file
    with open(file_path, 'w') as file:
        file.writelines(sorted_lines)

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python script.py <path_to_file>")
        sys.exit(1)

    file_path = sys.argv[1]
    sort_file_paths(file_path)
