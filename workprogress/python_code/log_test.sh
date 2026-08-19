# it will take the input root folder and check the code is the with the testbench is compiling or not 
#!/bin/bash

root_folder="$1"

if [ -z "$root_folder" ]; then
    echo "Usage: $0 <root_folder>"
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
    fi
' \;
