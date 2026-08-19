#!/bin/bash
### Example usage: cd Reverse-Engineering/CHStone/verilog_code; $bash C_to_V_EP.sh /output_folder/aes ./temp
###############################################################################################

# Check if the correct number of arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <input_folder> <output_folder>"
    exit 1
fi
###############################################################################################
# Main Execution 
# Run the Python script with the provided folder path as an argument
input_folder="$1"
output_folder="$2"

# Get the current directory
current_directory_path="$(dirname "$0")"
relative_path_entry_point="RevEngg/C_to_V_Utilities/find_entry_point_file.sh"
full_path_entry_point="$current_directory_path/$relative_path_entry_point"
# Project Name for xilinx
project_name=$(basename "$input_folder")
#full_path_xilinx = "$current_directory_path/xilinx.py"
#path to the each shell script
path_input_file=$(bash "$full_path_entry_point" "$input_folder")
echo "$path_input_file"

# Step 1: Search for "entry_point_" and count occurrences
result=$(grep -rwn "$input_folder" -e "entry_point_" | wc -l)

# Step 2: If "entry_point_" not found, search for "entry_point" and count occurrences
#if [ "$result" -eq 0 ]; then
    python3 xilinx.py -input_file "$path_input_file" -output_folder "$output_folder" -project "$project_name" -top entry_point
#else
    python3 xilinx.py -input_file "$path_input_file" -output_folder "$output_folder" -project "$project_name" -top entry_point_
    
#fi
