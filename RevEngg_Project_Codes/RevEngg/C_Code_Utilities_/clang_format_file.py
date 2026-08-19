import os
import shutil
import subprocess
import sys

def format_and_copy(input_file_path, output_folder):
    # Create the output folder if it doesn't exist
    os.makedirs(output_folder, exist_ok=True)

    # Get the base file name
    file_name = os.path.basename(input_file_path)

    # Run clang-format and save the formatted file to the output folder
    output_file_path = os.path.join(output_folder, file_name)

    clang_format_command = [
        "clang-format",
        "-style=Google",
        input_file_path,
        ">",  
        output_file_path
    ]
    subprocess.run(" ".join(clang_format_command), shell=True)

    print(f"Formatted {file_name} and saved to {output_folder}")

if __name__ == "__main__":
    # Check if input file and output folder are provided as command line arguments
    if len(sys.argv) != 3:
        print("Usage: python script.py <input_file> <output_folder>")
        sys.exit(1)

    input_file_path = sys.argv[1]
    output_folder_path = sys.argv[2]

    format_and_copy(input_file_path, output_folder_path)
