import os
import sys

def main():
    if len(sys.argv) != 3:
        print("Usage: python script.py <input_folder_path> <output_folder_path>")
        sys.exit(1)
    
    input_folder_path = sys.argv[1]
    output_folder_path = sys.argv[2]
    github_base_path = "https://github.com/subhrendu1987/Reverse-Engineering/blob/master/RevEngg_Project_Data/output_folder_for_UI/"

    try:
        # List all files in the input directory
        file_names = os.listdir(input_folder_path)

        # Filter out directories, keep only files
        file_names = [f for f in file_names if os.path.isfile(os.path.join(input_folder_path, f))]

        # Prepare the output file path
        output_file_path = os.path.join(output_folder_path, "file_paths.txt")

        # Write the full GitHub path for each file to the output file
        with open(output_file_path, "w") as output_file:
            for file_name in file_names:
                full_path = github_base_path + file_name
                output_file.write(full_path + "\n")

        print(f"Paths written to {output_file_path}")

    except Exception as e:
        print(f"An error occurred: {e}")
        sys.exit(2)

if __name__ == "__main__":
    main()
