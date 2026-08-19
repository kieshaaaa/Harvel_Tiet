import os
import sys

def create_empty_files(num_files, output_folder_path):
    # Ensure the output folder exists, if not, create it
    if not os.path.exists(output_folder_path):
        os.makedirs(output_folder_path)

    # Create the specified number of empty files with the naming pattern
    for i in range(1, num_files + 1):
        file_name = f"file{i}_c.txt"
        file_path = os.path.join(output_folder_path, file_name)

        # Create an empty file
        with open(file_path, 'w') as fp:
            pass  # No need to write anything, just create the file

        print(f"Created: {file_path}")

def main():
    # Check if the correct number of arguments are provided
    if len(sys.argv) != 3:
        print("Usage: python script.py <number_of_files> <output_folder_path>")
        sys.exit(1)
    
    try:
        num_files = int(sys.argv[1])
        output_folder_path = sys.argv[2]
        
        create_empty_files(num_files, output_folder_path)
    except ValueError:
        print("The number of files must be an integer.")
    except Exception as e:
        print(f"An error occurred: {e}")

if __name__ == "__main__":
    main()
