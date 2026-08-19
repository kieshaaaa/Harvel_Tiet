import os
import shutil
import sys
from pathlib import Path

def copy_matching_files(folder1, folder2, output_folder):
    # Ensure the input folders exist
    if not os.path.isdir(folder1):
        print(f"Input folder {folder1} does not exist.")
        return
    if not os.path.isdir(folder2):
        print(f"Input folder {folder2} does not exist.")
        return

    # Create the output folder if it does not exist
    Path(output_folder).mkdir(parents=True, exist_ok=True)

    # Get list of all files in the first input folder (with .v extension)
    files_in_folder1 = {os.path.splitext(f)[0] for f in os.listdir(folder1) if f.endswith('.v')}
    
    # Get list of all files in the second input folder (with .c extension)
    files_in_folder2 = [f for f in os.listdir(folder2) if f.endswith('.c')]
    
    # Copy matching files from folder2 to the output folder
    for file in files_in_folder2:
        file_base = os.path.splitext(file)[0]
        if file_base in files_in_folder1:
            src = os.path.join(folder2, file)
            dst = os.path.join(output_folder, file)
            shutil.copy2(src, dst)
            print(f"Copied {file} to {output_folder}")

if __name__ == "__main__":
    if len(sys.argv) != 4:
        print("Usage: python script.py <input_folder1> <input_folder2> <output_folder>")
        sys.exit(1)

    folder1 = sys.argv[1]
    folder2 = sys.argv[2]
    output_folder = sys.argv[3]

    copy_matching_files(folder1, folder2, output_folder)
