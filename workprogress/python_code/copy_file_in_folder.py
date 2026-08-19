import os
import shutil
import argparse

def create_subfolders_and_copy_files(input_folder, output_folder):
    try:
        # Ensure the output folder exists; create if it doesn't
        os.makedirs(output_folder, exist_ok=True)

        # List all files in the specified input folder
        files = [f for f in os.listdir(input_folder) if os.path.isfile(os.path.join(input_folder, f))]

        # Create a subfolder for each file and copy the file to that subfolder
        for i, file_name in enumerate(files, start=1):
            file_path = os.path.join(input_folder, file_name)

            # Create the subfolder using the format "directory{i}"
            subfolder_name = f'directory{i}'
            subfolder_path = os.path.join(output_folder, subfolder_name)
            os.makedirs(subfolder_path, exist_ok=True)

            # Copy the file to the subfolder
            shutil.copy(file_path, os.path.join(subfolder_path, file_name))

            print(f'Copied: {file_path} -> {os.path.join(subfolder_path, file_name)}')

    except FileNotFoundError:
        print(f'Folder not found: {input_folder}')
    except Exception as e:
        print(f'An error occurred: {str(e)}')

if __name__ == "__main__":
    # Set up command-line argument parser
    parser = argparse.ArgumentParser(description='Create subfolders for each file and copy them to the output folder.')
    parser.add_argument('input_folder', help='Path to the input folder.')
    parser.add_argument('output_folder', help='Path to the output folder.')

    # Parse command-line arguments
    args = parser.parse_args()

    # Call the function with command-line arguments
    create_subfolders_and_copy_files(args.input_folder, args.output_folder)
