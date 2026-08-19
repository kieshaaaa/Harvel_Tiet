#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <root_folder_path>"
    exit 1
fi

root_folder="$1"

# Counter for successful compilations
success_count=0

# Create a file to store paths of files that failed to compile
failures_file="$root_folder/compilation_fail.txt"
successes_file="$root_folder/compilation_successful.txt"
> "$failures_file"  # Create or clear the file
> "$successes_file" # Create or clear the file

# Find all C files in subdirectories of the root folder and process each one
#find "$root_folder" -type f -name '*.c' | while read -r file_path; do
find "$root_folder" -type f -name 'testbench_main.c' | while read -r file_path; do
    # Extract the directory path for creating the output file
    dir_name=$(dirname "$file_path")

    # Attempt to compile the file
    gcc -w "$file_path" -o "$dir_name/a.out"
    
    # Check the exit status of the compilation
    if [ $? -eq 0 ]; then
        echo "Compilation successful: $file_path"
        echo "$file_path" >> "$successes_file"
        ((success_count++))
    else
        echo "Compilation failed: $file_path"
        echo "$file_path" >> "$failures_file"
    fi
done

count=$(find "$root_folder" -type f -name 'a.out' | wc -l)
echo "Number of 'a.out' files: $count"

# Remove compiled files
find "$root_folder" -type f -name 'a.out' -exec rm {} \;

echo "Compiled files deleted."

