#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <input_file> <output_folder> <entry_point>"
    exit 1
fi

# Input file
input_file="$1"

# Output folder
output_folder="$2"

# Extract the name of the file without the .c extension
filename=$(basename "$input_file")
project_name="${filename%.c}"

# Get the path of the currently running shell script
script_path=$(readlink -f "$0")
#echo "$script_path"

# Get the directory path of the currently running script
script_dir=$(dirname "$0")


xilinx_path="$script_dir/xilinx.py"
echo "$xilinx_path"
# Run the Python script
python3 "$xilinx_path" -input_file "$input_file" -output_folder "$output_folder" -project "$project_name" -top entry_point
