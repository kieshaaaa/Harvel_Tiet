import os
import sys

def find_executable_folder(root_folder):
    # Open a file to save the subfolder paths
    with open("oe_file_path.txt", "w") as output_file:
        # Walk through the directory tree
        for dirpath, _, filenames in os.walk(root_folder):
            # Check if "output_executable" is in the list of filenames
            if "output_executable" in filenames:
                # Save the subfolder path to the output file
                output_file.write(dirpath + "\n")
                print(f"Found 'output_executable' in: {dirpath}")

if __name__ == "__main__":
    # Get the root folder path from the command-line arguments
    if len(sys.argv) != 2:
        print("Usage: python script_name.py <root_folder>")
        sys.exit(1)

    root_folder = sys.argv[1]

    # Call the function with the provided root folder
    find_executable_folder(root_folder)
