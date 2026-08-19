import os

def replace_spaces_with_underscore(root_folder_path):
    for root, dirs, files in os.walk(root_folder_path):
        for file_name in files:
            old_path = os.path.join(root, file_name)
            new_name = file_name.replace(' ', '_')
            new_path = os.path.join(root, new_name)

            # Rename the file
            os.rename(old_path, new_path)

if __name__ == "__main__":
    # Replace 'your_root_folder_path' with the actual path
    root_folder_path = '/home/virubuntu/Reverse-Engineering/Crawler/Non-Similar'

    replace_spaces_with_underscore(root_folder_path)
    print("Files renamed successfully.")
