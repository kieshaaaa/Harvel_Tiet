import os

def get_file_contents(file_path):
    try:
        with open(file_path, 'r') as file:
            return file.read()
    except Exception as e:
        print(f"Error reading {file_path}: {str(e)}")
        return None

def find_matching_files(root_folder):
    file_contents = {}
    matching_files = {}

    for root, dirs, files in os.walk(root_folder):
        for file_name in files:
            file_path = os.path.join(root, file_name)
            content = get_file_contents(file_path)

            if content is not None:
                if content in file_contents:
                    matching_file = file_contents[content]
                    if matching_file != file_path:
                        matching_files[file_path] = matching_file
                else:
                    file_contents[content] = file_path

    return matching_files

if __name__ == "__main__":
    root_folder = "/home/virubuntu/Reverse-Engineering/Crawler/Non-Similar"
    matching_files = find_matching_files(root_folder)
    count = 0

    if matching_files:
        with open("matching_files.txt", "w") as output_file:
            for file, match in matching_files.items():
                count = count + 1
                line = f"File: {file} matches with {match}\n"
                print(line, end="")  # Print the line
                output_file.write(line)  # Write the line to the file
        print("Results saved to 'matching_files.txt'")
    else:
        print("No matching files found.")

    print("count_count: ",count)
