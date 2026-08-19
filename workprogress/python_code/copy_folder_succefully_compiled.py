import os
import shutil
import sys

def copy_folders(output_folder, file_path):
    # Create the output folder if it doesn't exist
    if not os.path.exists(output_folder):
        os.makedirs(output_folder)

    # Open the file containing folder paths
    with open(file_path, "r") as input_file:
        # Read folder paths from each line
        folder_paths = [line.strip() for line in input_file.readlines()]

        # Copy each folder to the output folder
        for folder_path in folder_paths:
            try:
                shutil.copytree(folder_path, os.path.join(output_folder, os.path.basename(folder_path)))
                print(f"Successfully copied folder from {folder_path} to {output_folder}")
            except Exception as e:
                print(f"Error copying folder from {folder_path} to {output_folder}: {str(e)}")

if __name__ == "__main__":
    # Check if the correct number of command-line arguments is provided
    if len(sys.argv) != 3:
        print("Usage: python script_name.py <output_folder> <file_path>")
        sys.exit(1)

    # Get the output folder and file path from the command-line arguments
    output_folder = sys.argv[2]
    file_path = sys.argv[1]

    # Call the function with the provided output folder and file path
    copy_folders(output_folder, file_path)
