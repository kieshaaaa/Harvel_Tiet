#!/bin/bash

####################################################################################
# Check if the correct number of arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 root_directory output_directory"
    exit 1
fi

####################################################################################
# Main Execution
input_folder="$1"
output_directory="$2"

# Check if the input directory exists
if [ ! -d "$input_folder" ]; then
    echo "Error: The folder '$input_folder' does not exist."
    exit 1
fi

# Ensure the output directory exists
if [ ! -d "$output_directory" ]; then
    mkdir -p "$output_directory"
fi

# Get the current directory
current_directory_path="$(dirname "$0")"


# Check if the input and output folders are the same
if [ "$input_folder" = "$output_directory" ]; then
    echo "Error: The input and output directory are the same."
    exit 1
fi

# Extract the base folder name
base_input_folder_name=$(basename "$input_folder")

# Create an output folder within the specified output directory
output_folder="$output_directory/$base_input_folder_name"
mkdir -p "$output_folder"

# path to the each of the shell script
path_dat2verilog="$current_directory_path/dat2verilog.sh"
path_concat_verilog="$current_directory_path/concat_verilog.sh"
path_clean_verilog="$current_directory_path/clean_verilog_.sh"
path_add_endmodule="$current_directory_path/add_endmodule_.sh"
path_search_top="$current_directory_path/search_top_function.py"

#call the script dat2verilog.sh
bash "$path_dat2verilog" "$input_folder" "$output_folder"
#call the script concat_verilog.sh
bash "$path_concat_verilog" "$output_folder" "$output_directory" "$path_search_top"
# Create an empty output file using the input folder name as the filename
input_clean_file="$output_directory/$base_input_folder_name.v"

#remove the folder
rm -r "$output_folder"

#call the script clean_verilog.sh
bash "$path_clean_verilog" "$input_clean_file"
#call the script add_endmodule.sh 
bash "$path_add_endmodule" "$input_clean_file"



