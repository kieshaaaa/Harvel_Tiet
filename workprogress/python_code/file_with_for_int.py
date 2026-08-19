import sys

def find_lines_with_for_and_int_no_semicolon(file_path):
    result_lines = []
    with open(file_path, 'r') as file:
        for line_number, line in enumerate(file, start=1):
            if 'for' in line and 'int' in line and '//' not in line and '/*' not in line and 'printf' not in line :
                
                result_lines.append(line_number)
                print(line_number)
                print(file_path)
                break
    return result_lines

if __name__ == "__main__":
    # Check if a file path is provided as a command-line argument
    if len(sys.argv) != 2:
        print("Usage: python script.py <file_path>")
        sys.exit(1)

    file_path = sys.argv[1]

    # Example usage:
    lines_matching_criteria = find_lines_with_for_and_int_no_semicolon(file_path)
    
    #if lines_matching_criteria:
        #print(f"Lines with 'for' and 'int' but no semicolon in {file_path}: {lines_matching_criteria}")
    #else:
        #print(f"No lines found that meet the criteria in {file_path}.")
