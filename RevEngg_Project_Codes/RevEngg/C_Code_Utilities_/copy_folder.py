import os
import shutil
import sys

def copy_folders(root_folder, output_folder, num_folders=100):
    # Ensure the output folder exists, create it if not
    if not os.path.exists(output_folder):
        os.makedirs(output_folder)

    # Get a list of all folders in the root folder
    folders = [f for f in os.listdir(root_folder) if os.path.isdir(os.path.join(root_folder, f))]

    # Copy the first 'num_folders' folders
    for folder in folders[:num_folders]:
        source_path = os.path.join(root_folder, folder)
        destination_path = os.path.join(output_folder, folder)
        shutil.copytree(source_path, destination_path)

if __name__ == "__main__":
    # Check if the correct number of command line arguments are provided
    if len(sys.argv) != 3:
        print("Usage: python script.py <root_folder_path> <output_folder_path>")
        sys.exit(1)

    root_folder_path = sys.argv[1]
    output_folder_path = sys.argv[2]

    # Copy the first 100 folders from the root folder to the output folder
    copy_folders(root_folder_path, output_folder_path, num_folders=100)

    print("Folders copied successfully.")
