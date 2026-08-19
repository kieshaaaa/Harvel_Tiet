#!/bin/bash

# Check if a folder is provided as an argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <folder>"
    exit 1
fi

folder="$1"

# Check if the provided folder exists
if [ ! -d "$folder" ]; then
    echo "Error: Folder not found."
    exit 1
fi

# Fetch .c files in the folder
c_files=$(find "$folder" -name "*.c")

# Iterate through each .c file and modify special symbols using sed
for file in $c_files; do
    sed -i -e 's/\([(){};,\[\]\]\)/ \1 /g' "$file"
    echo "Modified $file"
done

echo "Added spaces in front and back of the symbols at folder $folder !"
