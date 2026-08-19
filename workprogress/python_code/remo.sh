# Take the path of the file which has the files path in each line , to remove that files 

#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <file_containing_paths>"
    exit 1
fi

file_paths_file="$1"

# Check if the file exists
if [ ! -f "$file_paths_file" ]; then
    echo "Error: File '$file_paths_file' not found."
    exit 1
fi

# Read each line from the file and delete the corresponding file
while IFS= read -r file_path; do
    if [ -e "$file_path" ]; then
        rm -f "$file_path"
        echo "Deleted: $file_path"
    else
        echo "File not found: $file_path"
    fi
done < "$file_paths_file"

echo "Deletion process completed."
