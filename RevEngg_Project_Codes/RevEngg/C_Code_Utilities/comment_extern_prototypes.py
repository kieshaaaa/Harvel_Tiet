import sys

def comment_out_lines_with_semicolon(file_path, line_number):
    try:
        with open(file_path, 'r') as file:
            lines = file.readlines()

        if 1 <= line_number <= len(lines):
            lines[line_number - 1] = "// " + lines[line_number - 1]  # Comment out the current line
            if ';' not in lines[line_number -1]:
                i = line_number  # Start from the next line
                while i < len(lines):
                    lines[i] = "// " + lines[i]  # Comment out the line
                    if ';' in lines[i]:
                        break  # Stop when a semicolon is found
                    i += 1

        with open(file_path, 'w') as file:
            file.writelines(lines)
    except FileNotFoundError:
        print("File not found.")
    except IndexError:
        print("Line number is out of range.")



def comment_out_lines_by_line_numbers(input_file_path, target_file_path):
    with open(input_file_path, 'r') as input_file:
        lines_to_comment = [int(line.split(':')[0].strip()) for line in input_file]

    for line in lines_to_comment:
        comment_out_lines_with_semicolon(target_file_path, line)


if __name__ == "__main__": 
    if len(sys.argv) != 3:
        print("Usage: python script.py input_file_path target_file_path")
        sys.exit(1)

    input_file_path = sys.argv[1]
    target_file_path = sys.argv[2]
    comment_out_lines_by_line_numbers(input_file_path, target_file_path)
