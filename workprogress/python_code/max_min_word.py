import sys

def find_max_and_min_word_count_lines(file_path):
    max_word_count = 0
    min_word_count = float('inf')  # Initialize min_word_count with infinity for comparison
    line_number_with_max_word_count = 0
    line_number_with_min_word_count = 0
    current_line_number = 0
    
    with open(file_path, 'r') as file:
        for line in file:
            current_line_number += 1
            # Split the line into words and count them
            word_count = len(line.split())
            if word_count > max_word_count:
                max_word_count = word_count
                line_number_with_max_word_count = current_line_number
            # Check if this line has fewer words than the current minimum (but ignore empty lines)
            if 0 < word_count < min_word_count:
                min_word_count = word_count
                line_number_with_min_word_count = current_line_number
    
    return (line_number_with_max_word_count, max_word_count, 
            line_number_with_min_word_count, min_word_count)

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python script.py <file_path>")
        sys.exit(1)
    
    file_path = sys.argv[1]
    max_line_num, max_count, min_line_num, min_count = find_max_and_min_word_count_lines(file_path)
    
    if max_line_num == 0 or min_line_num == 0:
        print("The file is empty or does not exist.")
    else:
        print(f"The line with the maximum word count is at line number: {max_line_num} with {max_count} words.")
        print(f"The line with the minimum word count (excluding empty lines) is at line number: {min_line_num} with {min_count} words.")
