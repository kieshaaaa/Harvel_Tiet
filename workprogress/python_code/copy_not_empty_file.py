import os
import shutil
import sys

def copy_non_empty_files(input_folder, output_folder):
    # Ensure the output folder exists
    if not os.path.exists(output_folder):
        os.makedirs(output_folder)

    # List all files in the input folder
    for filename in os.listdir(input_folder):
        file_path = os.path.join(input_folder, filename)

        # Check if it's a file and not a directory
        if os.path.isfile(file_path):
            # Check if the file is not empty
            if os.path.getsize(file_path) > 0:
                # Construct the path to the output file
                output_file_path = os.path.join(output_folder, filename)
                # Copy the non-empty file to the output folder
                shutil.copy(file_path, output_file_path)
                print(f"Copied '{filename}' to the output folder.")

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python script.py <input_folder_path> <output_folder_path>")
        sys.exit(1)

    input_folder_path = sys.argv[1]
    output_folder_path = sys.argv[2]

    copy_non_empty_files(input_folder_path, output_folder_path)
