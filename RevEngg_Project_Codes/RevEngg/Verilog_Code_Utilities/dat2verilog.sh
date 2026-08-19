#!/bin/bash
### Example usage: cd Reverse-Engineering/CHStone/verilog_code; $bash dat2verilog.sh aes/top_func_encrypt ./temp
#########################################################################################
insert_content_at_line() {
    local file1="$1"
    local lineno="$2"
    local file2="$3"
    local targetfilename="$4"

    # Check if files exist
    if [[ ! -f "$file1" ]] || [[ ! -f "$file2" ]]; then
        echo "Error: One or both input files do not exist!" >&2
        return 1
    fi

    # Combine the content
    awk -v file1="$file1" -v lineno="$lineno" \
    'NR==lineno {while ((getline line < file1) > 0) print line} {print}' "$file2" > "$targetfilename"
}

#########################################################################################
# Function to display help message
display_help() {
    echo "Usage: $0 <SOURCE_DIR> <TARGET_DIR>"
    echo "Description: This script converts .dat file and modifies the .v files"
    echo "Arguments:"
    echo "  arg1: Source directory of verilog program"
    echo "  arg2: Target directory of verilog program"
}
#########################################################################################
check_v_file_count(){
    source_count=$(find "$1" -type f -name "*.v" | wc -l)
    target_count=$(find "$2" -type f -name "*.v" | wc -l)

    if [ "$source_count" -eq "$target_count" ]; then
        echo "Both directories have the same number of .v files."
    else
        echo "$1 has $source_count .v files."
        echo "$2 has $target_count .v files."
    fi
}
#########################################################################################
# Function to modify dat file
prepend_to_lines() {
    local filename="$1"
    local prepend_string="$2"
    local TEMP_DIR="$3"
    local OUT_FILE="$TEMP_DIR/"$(basename $filename)

    # Ensure the file exists
    if [[ ! -f "$filename" ]]; then
        echo "Error: File not found!" >&2
        return 1
    fi

    # Create a temporary file
    touch "$OUT_FILE"

    # If array index starts from 0
    awk -v array="$prepend_string" '{print array "[" NR-1 "]=8'\''h" $0 ";"}' "$filename" > "$OUT_FILE"
    # If array index starts from 1
    #awk -v array="$prepend_string" '{print array "[" NR "]=8'\''h" $0 ";"}' "$filename" > "$OUT_FILE"

    # Inform the user of the temp file location
    #echo "$filename --> $OUT_FILE"
    echo "$OUT_FILE"
}

#########################################################################################
# Check if no arguments were provided
if [ $# -ne 2 ]; then
    display_help
    exit 1  # Exit with a non-zero status to indicate an error
fi
#########################################################################################
# Main Execution
SOURCE_DIR="$1"
TARGET_DIR="$2"
mkdir -p $TARGET_DIR
find "$SOURCE_DIR" -type f -name "*.v" -exec cp {} "$TARGET_DIR" \;

dat_files_array=($SOURCE_DIR/*.dat)

for file in "${dat_files_array[@]}"; do
	dat_file_name=$(basename "$file")
    v_file_info=$(grep -rwn "$dat_file_name" $SOURCE_DIR)

    func_call_v_file=$(echo $v_file_info | awk -F':' '{print $1}')
    func_call_lineno=$(echo $v_file_info | awk -F':' '{print $2}')
    func_call_line=$(echo $v_file_info | awk -F':' '{print $3}')

    RAM_or_ROM=$(echo $func_call_line| awk -F',' '{print $2}')

    # Remove ");" from the end of the string using sed
    RAM_or_ROM=$(echo "$RAM_or_ROM" | sed 's/);$//')

    case $RAM_or_ROM in
    *ram*)
        isRAM="True"
        tmp_file_name=$(prepend_to_lines "$file" "$RAM_or_ROM" "$TARGET_DIR")
        #echo "$file --> $tmp_file_name"
        ;;
    *rom*)
        isRAM="False"
        tmp_file_name=$(prepend_to_lines "$file" "$RAM_or_ROM" "$TARGET_DIR")
        #echo "$file --> $tmp_file_name"
        ;;
    *)
		isRAM=""
    esac
    #if()
    OUT_FILE="$TARGET_DIR/"$(basename $func_call_v_file)
    insert_content_at_line "$tmp_file_name" "$func_call_lineno" "$func_call_v_file" "$OUT_FILE"
    echo "$func_call_v_file --> $OUT_FILE"

    #Comment readmem statement
    sed -i "\|$func_call_line| s|^|//|" "$OUT_FILE"
    # For verification
    #diff $OUT_FILE $func_call_v_file
    #echo "Debug1:$dat_file_name --> $v_file_info --> isRAM=$isRAM"
    #echo "Debug2:$func_call_line"
done
# CLeanup temp .dat files
find "$TARGET_DIR" -type f -name "*.dat" -exec rm {} \;
# if both directory has same number of .v files or not
check_v_file_count "$SOURCE_DIR" "$TARGET_DIR"
