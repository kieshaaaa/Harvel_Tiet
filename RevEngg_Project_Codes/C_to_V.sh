#!/bin/bash
### Example usage: cd Reverse-Engineering/CHStone/verilog_code; $bash C_to_V.sh aes ./temp
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

# Project Name for xilinx
project_name=$(basename "$input_folder")

#path to the each shell script
path_extractMain_cscope="$current_directory_path/RevEngg/C_to_V_Utilities/extractMain_cscope.sh"
path_extract_function_name="$current_directory_path/RevEngg/C_to_V_Utilities/extract_function_name_.sh"
path_extract_main_file_name="$current_directory_path/RevEngg/C_to_V_Utilities/extract_main_file_name.py"


bash "$path_extractMain_cscope" "$input_folder" ./extractMain_cscope

first_function_name=$(bash "$path_extract_function_name" ./extractMain_cscope/FcallFrom_.json)

rm -r ./extractMain_cscope
# Capture the output (list of main function files) in a variable
output=$(python3 "$path_extract_main_file_name" "$input_folder")


# Now you can use the "$output" variable in your shell script
echo "List of main function files:"
echo "$output"
echo "$first_function_name"

python3 xilinx.py -input_file "$output" -output_folder "$output_folder" -project "$project_name" -top "$first_function_name"
