#!/bin/bash

root_folder="$1"
output_folder="$2"

if [ -z "$root_folder" ] || [ -z "$output_folder" ]; then
    echo "Usage: $0 <root_folder> <output_folder>"
    exit 1
fi

find "$root_folder" -name 'testbench_main.c' -exec bash -c '
    folder_path=$(dirname "{}")
    log_file="${folder_path}/gcc.log"
    gcc -w -o /dev/null "{}" > "$log_file" 2>&1
    if [ -s "$log_file" ]; then
        echo "{}" >> "$log_file"
    else
        rm -f "$log_file"
        cp "{}" "$2"
    fi
' \{\} "$output_folder" \;
