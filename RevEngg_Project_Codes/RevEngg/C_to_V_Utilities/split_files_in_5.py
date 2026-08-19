import os
import shutil
import sys
from pathlib import Path

def copy_files(input_folder, output_folder):
    # Ensure the input folder exists
    if not os.path.isdir(input_folder):
        print(f"Input folder {input_folder} does not exist.")
        return

    # Create the output folder if it does not exist
    Path(output_folder).mkdir(parents=True, exist_ok=True)

    # Get list of all files in the input folder
    files = [f for f in os.listdir(input_folder) if os.path.isfile(os.path.join(input_folder, f))]
    
    total_files = len(files)
    files_per_folder = 5
    folder_count = (total_files + files_per_folder - 1) // files_per_folder  # Calculate the number of folders needed

    for i in range(folder_count):
        # Create a new subdirectory
        new_folder = os.path.join(output_folder, f"folder_{i+1}")
        Path(new_folder).mkdir(parents=True, exist_ok=True)

        # Copy files to the new subdirectory
        start_index = i * files_per_folder
        end_index = start_index + files_per_folder
        for file in files[start_index:end_index]:
            src = os.path.join(input_folder, file)
            dst = os.path.join(new_folder, file)
            shutil.copy2(src, dst)
        print(f"Copied files {start_index + 1} to {min(end_index, total_files)} to {new_folder}")

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python script.py <input_folder> <output_folder>")
        sys.exit(1)

    input_folder = sys.argv[1]
    output_folder = sys.argv[2]

    copy_files(input_folder, output_folder)
