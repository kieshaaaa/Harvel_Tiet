#!/bin/bash
### Example usage: cd Reverse-Engineering/CHStone/verilog_code; $bash concat_verilog.sh temp/ ./temp_concated
######################################################################
# Check if the correct number of arguments are provided
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 input_folder output_folder"
    exit 1
fi
#####################################################################
# Main Execution
input_folder="$1"
output_folder="$2"
search_top_path="$3"
# Ensure the output folder exists
if [ ! -d "$output_folder" ]; then
    mkdir -p "$output_folder"
fi

# Extract the name of the input folder
input_folder_name=$(basename "$input_folder")

# Create an empty output file using the input folder name as the filename
output_file="$output_folder/$input_folder_name.v"
touch "$output_file"

# Concatenate .v files in the input folder into the output file
 
# Check if the 'search_top_function.py' script exists
if [ -f "$search_top_path" ]; then
    # Run 'search_top_function.py' with the specified arguments
    python3 "$search_top_path" "$input_folder" "$output_file"
else
    echo "The 'search_top_function.py' script does not exist."
    exit 1
fi

echo "Concatenated .v files saved as $output_file."
