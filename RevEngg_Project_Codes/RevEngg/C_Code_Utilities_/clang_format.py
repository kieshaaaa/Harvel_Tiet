import os
import shutil
import subprocess
import sys

def format_and_copy(input_folder, output_folder_):
    # Create the output folder
    input_folder_name = os.path.basename(input_folder)

    output_folder = os.path.join(output_folder_, input_folder_name)

    os.makedirs(output_folder, exist_ok=True)

    # Fetch .c files in the input folder
    c_files = [file for file in os.listdir(input_folder) if file.endswith(".c")]

    # Run clang-format for each .c file and copy other files
    for file in c_files:
        input_file_path = os.path.join(input_folder, file)
        output_file_path = os.path.join(output_folder, file)

        # Run clang-format command
        clang_format_command = [
            "clang-format",
            "-style=Google",
            input_file_path,
            ">",  # Note: This is shell redirection
            output_file_path
        ]
        subprocess.run(" ".join(clang_format_command), shell=True)

        print(f"Formatted {file} and copied to {output_folder}")

    # Copy other files (excluding .c files)
    for file in os.listdir(input_folder):
        if file.endswith(".c"):
            continue

        input_file_path = os.path.join(input_folder, file)
        output_file_path = os.path.join(output_folder, file)
        shutil.copy2(input_file_path, output_file_path)

        print(f"Copied {file} to {output_folder}")
    return output_folder

if __name__ == "__main__":
    # Check if input and output folders are provided as command line arguments
    if len(sys.argv) != 3:
        print("Usage: python script.py <input_folder> <output_folder>")
        sys.exit(1)

    input_folder_path = sys.argv[1]
    output_folder_path = sys.argv[2]

    format_and_copy(input_folder_path, output_folder_path)
