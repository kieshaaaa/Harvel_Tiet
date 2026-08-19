import os
import sys

def combine_files(file1_path, file2_path):
   # Get the current directory
    current_directory = os.getcwd()

    # Create the empty combined.tmp file in the current directory
    output_path = os.path.join(current_directory, "combined.tmp")
    open(output_path, 'w').close()

    with open(file1_path, 'r') as file1, open(file2_path, 'r') as file2, open(output_path, 'w') as output_file:
        for line1, line2 in zip(file1, file2):
            line1 = line1.strip()
            line2 = line2.strip()
            combined_line = f"{line1} : {line2}\n"
            output_file.write(combined_line)

def process_file(input_file_path):

    # Get the current directory
    current_directory = os.getcwd()

    # Create the empty prototypes_to_remove.tmp file in the current directory
    output_file_path = os.path.join(current_directory, "extern_prototypes.tmp")
    open(output_file_path, 'w').close()

    with open(input_file_path, 'r') as input_file, open(output_file_path, 'w') as output_file:
        for line in input_file:
            if "extern" in line:
                output_file.write(line)



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
        print("Usage: python script.py line_number_file prototypes_files_by_clang")
        sys.exit(1)

    file1_path = sys.argv[1]
    file2_path = sys.argv[2]
    input_file_path = sys.args[3]
    target_file_path = sys.args[4]

    combine_files(file1_path, file2_path)
    process_file(comibined_file)
    comment_out_lines_by_line_numbers(input_file_path, target_file_path)
