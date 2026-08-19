import os
import sys


def combine_files(file1_path, file2_path, output_path):
    with open(file1_path, 'r') as file1, open(file2_path, 'r') as file2, open(output_path, 'w') as output_file:
        for line1, line2 in zip(file1, file2):
            line1 = line1.strip()
            line2 = line2.strip()
            combined_line = f"{line1} : {line2}\n"
            output_file.write(combined_line)



def process_file(input_file_path, output_file_path):
    with open(input_file_path, 'r') as input_file, open(output_file_path, 'w') as output_file:
        for line in input_file:
            if "extern" in line:
                output_file.write(line)

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python script.py line_number_file prototypes_files_by_clang")
        sys.exit(1)

    file1_path = sys.argv[1]
    file2_path = sys.argv[2]

    # Get the current directory
    current_directory = os.getcwd()
    print("Current Directory:", current_directory)

    # Create the empty combined.tmp file in the current directory
    combined_file_path = os.path.join(current_directory, "combined.tmp")
    prototypes_to_remove = os.path.join(current_directory, "extern_prototypes.tmp")
    open(combined_file_path, 'w').close()
    open(prototypes_to_remove, 'w').close()


    combine_files(file1_path, file2_path, combined_file_path)
    process_file(combined_file_path, prototypes_to_remove)
