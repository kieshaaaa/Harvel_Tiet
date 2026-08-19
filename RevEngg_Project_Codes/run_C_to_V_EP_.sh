#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 root_folder output_folder"
    exit 1
fi

root_folder=$1
output_folder=$2

# Check if the root folder exists
if [ ! -d "$root_folder" ]; then
    echo "Error: Root folder not found."
    exit 1
fi

# Check if the output folder exists, create it if not
if [ ! -d "$output_folder" ]; then
    mkdir -p "$output_folder"
fi

# Iterate through each subfolder inside root folder
for folder_path in "$root_folder"/*/; do
    if [ -d "$folder_path" ]; then
        # Call the script for each subfolder
        bash ./C_to_V_EP.sh "$folder_path" "$output_folder"
    else
        echo "Warning: Not a directory - $folder_path"
    fi
done

echo "Script execution completed."
