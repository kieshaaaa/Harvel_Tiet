#!/bin/bash

# Check if the root folder argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 /path/to/root_folder"
    exit 1
fi

# Set the root folder from the command-line argument
root_folder="$1"

# Find all testbench_main.c files and compile them
find "$root_folder" -name 'testbench_main.c' -exec sh -c '
    file_path="{}"
    output_executable="$(dirname "$file_path")/output_executable"
    gcc_log_path="$(dirname "$file_path")/gcc.log"
    
    gcc -w "$file_path" -o "$output_executable" > "$gcc_log_path" 2>&1
    echo "Compiled: $file_path -> $output_executable"
' \;
