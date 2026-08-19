# Fetch the file from the c folder which matches the .v file to gather the c code data .

import os
import shutil
import argparse

def copy_matching_c_files(verilog_folder, c_folder, output_folder):
    # Ensure output folder exists
    if not os.path.exists(output_folder):
        os.makedirs(output_folder)

    # Get a list of .v files in the verilog folder
    verilog_files = [f for f in os.listdir(verilog_folder) if f.endswith(".v")]

    # Iterate through each .v file
    for verilog_file in verilog_files:
        # Extract the name without .v extension
        file_name_without_extension = os.path.splitext(verilog_file)[0]

        # Construct the corresponding .c file name
        c_file_name = file_name_without_extension + ".c"

        # Check if the .c file exists in the c folder
        c_file_path = os.path.join(c_folder, c_file_name)
        if os.path.exists(c_file_path):
            # Copy the .c file to the output folder
            output_file_path = os.path.join(output_folder, c_file_name)
            shutil.copy(c_file_path, output_file_path)
            print(f"Match found: {verilog_file} -> {c_file_name}")

def main():
    parser = argparse.ArgumentParser(description="Copy matching .c files for each .v file.")
    parser.add_argument("-in_folder_v", required=True, help="Path to the folder containing Verilog (.v) files.")
    parser.add_argument("-in_folder_c", required=True, help="Path to the folder containing C (.c) files.")
    parser.add_argument("-out_folder", required=True, help="Path to the output folder.")

    args = parser.parse_args()

    verilog_folder_path = args.in_folder_v
    c_folder_path = args.in_folder_c
    output_folder_path = args.out_folder

    copy_matching_c_files(verilog_folder_path, c_folder_path, output_folder_path)

if __name__ == "__main__":
    main()
