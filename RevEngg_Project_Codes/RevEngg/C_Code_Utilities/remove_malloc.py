import os
import sys

def remove_lines_from_file(input_file, output_folder):
    # Define the strings to search for in the file
    strings_to_remove = ["__malloc__", "__builtin_free"]

    # Construct the output file path
    output_file = os.path.join(output_folder, os.path.basename(input_file))

    # Open the input and output files
    with open(input_file, 'r') as infile, open(output_file, 'w') as outfile:
        for line in infile:
            # Check if any of the strings to remove are in the line
            if not any(s in line for s in strings_to_remove):
                outfile.write(line)

    print(f"Lines containing {strings_to_remove} removed. Output written to {output_file}")

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python script.py input_file.c output_folder")
        sys.exit(1)

    input_file = sys.argv[1]
    output_folder = sys.argv[2]

    # Ensure the output folder exists
    if not os.path.exists(output_folder):
        os.makedirs(output_folder)

    remove_lines_from_file(input_file, output_folder)
