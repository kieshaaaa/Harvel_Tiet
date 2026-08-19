import shutil
import sys
import os

def copy_file_(input_file, output_folder):
    try:
        # Check if the input file exists
        if not os.path.exists(input_file):
            print(f"Error: Input file '{input_file}' not found.")
            return

        # Check if the output folder exists, create if not
        if not os.path.exists(output_folder):
            os.makedirs(output_folder)

        # Extract the file name from the input file path
        file_name = os.path.basename(input_file)

        # Build the output file path by joining the output folder and file name
        output_file_path = os.path.join(output_folder, file_name)

        # Copy the file
        shutil.copy2(input_file, output_file_path)

        print(f"File '{file_name}' copied successfully to '{output_folder}'.")
    except Exception as e:
        print(f"Error: {e}")
    return output_file_path


def delete_file(file_path):
    try:
        os.remove(file_path)
        print(f"File '{file_path}' deleted successfully.")
    except FileNotFoundError:
        print(f"File '{file_path}' not found.")
    except PermissionError:
        print(f"Permission error: Unable to delete file '{file_path}'.")
    except Exception as e:
        print(f"An error occurred: {e}")

if __name__ == "__main__":
    # Check if the correct number of command line arguments is provided
    if len(sys.argv) != 3:
        print("Usage: python script.py <input_file> <output_folder>")
    else:
        input_file = sys.argv[1]
        output_folder = sys.argv[2]
        copy_file_(input_file, output_folder)
