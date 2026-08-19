#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 input_file output_folder"
    exit 1
fi

input_file=$1
output_folder=$2

# Check if the input file exists
if [ ! -f "$input_file" ]; then
    echo "Error: Input file not found."
    exit 1
fi

# Check if the output folder exists, create it if not
if [ ! -d "$output_folder" ]; then
    mkdir -p "$output_folder"
fi

# Iterate through each folder path in the input file
while IFS= read -r folder_path; do
    if [ -d "$folder_path" ]; then
        # Execute the C_to_V_EP.sh script for each folder path
        bash /home/virubuntu/Reverse-Engineering/RevEngg_Project/C_to_V_EP.sh "$folder_path" "$output_folder"
    else
        echo "Warning: Directory not found - $folder_path"
    fi
done < "$input_file"

echo "Script execution completed."
