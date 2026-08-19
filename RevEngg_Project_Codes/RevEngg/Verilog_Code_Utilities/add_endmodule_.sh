#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <input_file>"
    exit 1
fi

input_file="$1"

if [ ! -f "$input_file" ]; then
    echo "Input file does not exist: $input_file"
    exit 1
fi

output_file="${input_file}_modified"

# Initialize a flag to indicate whether we've encountered the first "module" keyword
first_module=1

# Read the input file line by line
while IFS= read -r line; do
    if [[ "$line" == *"endmodule"* ]]; then
        # Skip lines containing "endmodule"
        continue
    elif [[ "$line" == *"module "* ]]; then
        # If this line contains "module", add an "endmodule" line above it
        if [ "$first_module" -eq 0 ]; then
            echo "endmodule" >> "$output_file"
        else
            first_module=0
        fi
    fi

    # Write the current line to the output file
    echo "$line" >> "$output_file"

    # Keep track of the last line
    last_line="$line"
done < "$input_file"

# Add an extra "endmodule" below the last line
echo "endmodule" >> "$output_file"

# Rename the output file to the input file name
mv "$output_file" "$input_file"

echo "Processing complete. Modified code saved to $input_file"
