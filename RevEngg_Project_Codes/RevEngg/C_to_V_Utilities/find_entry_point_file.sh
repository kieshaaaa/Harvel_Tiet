#!/bin/bash

# Check if the correct number of arguments are provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <folder_name>"
    exit 1
fi

folder_name="$1"

# Step 1: Search for "entry_point_" and count occurrences
result=$(grep -rwn "$folder_name" -e "entry_point_" | wc -l)

# Step 2: If "entry_point_" not found, search for "entry_point" and count occurrences
if [ "$result" -eq 0 ]; then
    result1=$(grep -rwn "$folder_name" -e "entry_point" | wc -l)

    # Step 3: If "entry_point" not found, send an error message
    if [ "$result1" -eq 0 ]; then
        echo "Error: 'entry_point' not found in any files in $folder_name."
    else
        # Step 4: If "entry_point" found, search for "int entry_point ()" and return the file path
        file_path=$(grep -rwn "$folder_name" -e "int entry_point (" | cut -d ':' -f 1)
        if [ -n "$file_path" ]; then
            echo "$file_path"
        fi
    fi
else
    # Step 5: If "entry_point_" found, search for "int entry_point_ ()" and return the file path
    file_path=$(grep -rwn "$folder_name" -e "int entry_point_ ()" | cut -d ':' -f 1)
    if [ -n "$file_path" ]; then
        echo "$file_path"
    fi
fi
