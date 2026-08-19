import sys

def find_max_and_min_length_line(file_path):
    max_length = 0
    min_length = float('inf')  # Initialize min_length with infinity
    line_number_with_max_length = 0
    line_number_with_min_length = 0
    current_line_number = 0
    
    with open(file_path, 'r') as file:
        for line in file:
            current_line_number += 1
            #line_length = len(line)
            #line_without_whitespace = "".join(line.split())
            #line_length = len(line_without_whitespace)
            line_without_spaces = line.replace(" ", "")  # Remove spaces from the line
            line_length = len(line_without_spaces)

            if line_length > max_length:
                max_length = line_length
                line_number_with_max_length = current_line_number
            if line_length < min_length:
                min_length = line_length
                line_number_with_min_length = current_line_number
    
    return line_number_with_max_length, max_length, line_number_with_min_length, min_length

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python script.py <file_path>")
        sys.exit(1)
    
    file_path = sys.argv[1]
    max_line_number, max_length, min_line_number, min_length = find_max_and_min_length_line(file_path)
    if max_line_number == 0 or min_line_number == 0:
        print("The file is empty or does not exist.")
    else:
        print(f"The line with the maximum length is at line number: {max_line_number} with length {max_length}.")
        print(f"The line with the minimum length is at line number: {min_line_number} with length {min_length}.")

