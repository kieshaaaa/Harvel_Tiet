# it will run the preprocess_c.py which is custom preprocessing by the RevEngg Team and then Run the testbench_generate.py whihc create the test bench for the preprocessed output 
# bash main_shell.sh /home/virubuntu/c_code/c_code_crawler /home/virubuntu/c_code/c_code_crawler_output

#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <root_folder_path> <output_folder_path>"
    exit 1
fi

root_folder="$1"
output_folder="$2"

# Create the output folder if it doesn't exist
mkdir -p "$output_folder"

# Find all files in the root folder and process each one
find "$root_folder" -type f -name '*.c'| while read -r file_path; do
    # Get the directory name where the file is located
    dir_name=$(dirname "$file_path")

    # Remove the root folder path from the directory name
    relative_dir=$(realpath --relative-to="$root_folder" "$dir_name")

    # Create the same folder structure in the output folder
    mkdir -p "$output_folder/$relative_dir"

    # Copy the file to the corresponding folder in the output directory
    cp "$file_path" "$output_folder/$relative_dir/"

    # Run the Python script name preprocess_c.py with file path and relative directory as arguments
    python3 preprocess_c.py "$file_path" "$output_folder/$relative_dir/"
   
    base_name=$(basename "$file_path")
    
    # Run the Python script testbench_generate.py with file 
    python3 testbench_generate.py "$output_folder/$relative_dir/$base_name"

done

echo "Folder structure copied and Python script executed successfully."
