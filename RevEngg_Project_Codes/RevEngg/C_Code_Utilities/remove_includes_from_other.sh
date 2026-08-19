#!/bin/bash

# Check for the correct number of command line arguments
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <folder_path> <main_file.c>"
    exit 1
fi

folder_path="$1"
main_file="$2"
temp_file="temp_main.c"

# Check if the folder exists
if [ ! -d "$folder_path" ]; then
    echo "Folder not found: $folder_path"
    exit 1
fi

# Check if the main file exists
if [ ! -f "$main_file" ]; then
    echo "Main file not found: $main_file"
    exit 1
fi



# Create a temporary copy of the main file
cp "$main_file" "$temp_file"

# Extract the list of #include statements from the main file
includes=$(grep "#include" "$temp_file")

# Loop through the files in the folder
for file in "$folder_path"/*.c; do
    if [ "$file" != "$main_file" ]; then
        # Remove #include statements present in the main file from other files
        for include in $includes; do
            sed -i "/$include/d" "$file"
        done
    fi
done

# Clean up the temporary main file copy
rm "$temp_file"

echo "Done. #include statements removed from other C files in $folder_path."
