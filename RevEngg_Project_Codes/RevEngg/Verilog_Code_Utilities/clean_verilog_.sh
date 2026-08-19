#!/bin/bash
### Example usage: $bash clean_verilog.sh input_file
############################################################################################################
# Check if the correct number of arguments are provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 input_file"
    exit 1
fi

############################################################################################################
# Main Execution 

input_file="$1"

# Check if the input file exists
if [ ! -f "$input_file" ]; then
    echo "Error: Input file '$input_file' does not exist."
    exit 1
fi

comment_pattern='//.*'
timescale_pattern='`timescale.*$'
core_generation_info_pattern='^\(\* CORE_GENERATION_INFO='

# Use grep to exclude lines containing the specified patterns and overwrite the input file
grep -vE "$comment_pattern|$timescale_pattern|$core_generation_info_pattern" "$input_file" | sed '/^ *$/d; s/ \{2,\}/ /g' > "$input_file".cleaned

mv "$input_file".cleaned "$input_file"

echo "Lines containing specified patterns removed. Original .v file updated."
