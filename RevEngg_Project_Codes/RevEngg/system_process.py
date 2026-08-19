import os
import shutil

def delete_folder(folder_path):
    try:
        shutil.rmtree(folder_path)
        print(f"Folder '{folder_path}' and its contents have been deleted.")
    except Exception as e:
        print(f"An error occurred: {str(e)}")


def delete_file(file_path):
    try:
        os.remove(file_path)
        print(f"File {file_path} has been deleted.")
    except FileNotFoundError:
        print(f"File {file_path} not found, unable to delete.")
    except Exception as e:
        print(f"An error occurred while deleting {file_path}: {e}")


def move_file(input_file_path, output_folder):
    try:
        # Check if the input file exists
        if not os.path.isfile(input_file_path):
            print(f"Input file '{input_file_path}' does not exist.")
            return

        # Create the output folder if it doesn't exist
        if not os.path.exists(output_folder):
            os.makedirs(output_folder)

        # Get the base filename from the input file path
        file_name = os.path.basename(input_file_path)

        # Combine the output folder and file name to create the destination path
        destination_path = os.path.join(output_folder, file_name)
       
        # Check if the destination file already exists
        if os.path.exists(destination_path):
            print(f"Destination file '{destination_path}' already exists. File not moved.")
            return
    
        # Move the file to the output folder
        shutil.move(input_file_path, destination_path)

        print(f"File '{file_name}' has been moved to '{output_folder}'.")
    except Exception as e:
        print(f"An error occurred: {str(e)}")

def copy_folder(input_folder, output_folder):
    try:
        # Join the output folder path with the base name of the input folder
        output_folder_ = os.path.join(output_folder, os.path.basename(input_folder))

        # Copy the entire input folder and its contents to the output folder
        shutil.copytree(input_folder, output_folder_)
        print(f"Folder '{input_folder}' copied to '{output_folder}'.")
    except FileNotFoundError:
        print(f"Error: The source folder '{input_folder}' does not exist.")
    except FileExistsError:
        print(f"Error: The destination folder '{output_folder}' already exists.")
    except Exception as e:
        print(f"An error occurred: {str(e)}")
  
    return output_folder_


