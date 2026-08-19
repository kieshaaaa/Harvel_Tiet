#!/bin/bash
### Example usage: cd Reverse-Engineering/CHStone/C_code; $bash extractMain.sh aes/ ./temp
# Main Execution
SOURCE_DIR="$1"
TARGET_DIR="$2"
mkdir -p $TARGET_DIR
declare -a files_array
#########################################################################################
findFilesWithFunctionDefinition(){
    funcName="$1"
    SOURCE_DIR="$2"
    searchKey="(^|[[:print:]]*[[:space:]])$funcName[[:space:]]*\([[:print:]]*\)"
    files_array=$(grep -rw --include='*.c' -E "$searchKey" $SOURCE_DIR| grep -v ';$' | awk -F':' '{print $1}')
    # Check the array
    if contains_empty_element "${files_array[@]}"; then
        echo "The array contains an empty element (i.e. main function not found)." >&2
        echo "[$files_array]" >&2
        return 0
    fi
    return 1
}

#########################################################################################
# Function to check for an empty element
contains_empty_element() {
  local arr=("$@")
  
  for elem in "${arr[@]}"; do
    if [[ -z "$elem" ]]; then
      return 0  # Empty element found
    fi
  done

  return 1  # No empty elements found
}
#########################################################################################
mainMethodExtractor(){
    local INPUT_FILE="$1"
    local OUTPUT_FILE="$2"
    if [[ -z "$INPUT_FILE" || ! -f "$INPUT_FILE" ]]; then
        echo "Error: INPUT_FILE is not set or is not a valid file."
        return 1
    fi
    awk '
    BEGIN { print_main = 0; brace_count = 0; }
    /main[[:space:]]*\(/ { print_main = 1; }
    print_main { print $0; }
    print_main && /{/ { brace_count++; }
    print_main && /}/ { brace_count--; if (brace_count == 0) { print_main = 0; } }
    ' "$INPUT_FILE" > "$OUTPUT_FILE"

    echo "$INPUT_FILE -->  $OUTPUT_FILE"
}
#########################################################################################
# Function to display help message
display_help() {
    echo "Usage: $0 <SOURCE_DIR> <TARGET_DIR>"
    echo "Description: This script finds main method from .c files and stores them separately"
    echo "Arguments:"
    echo "  arg1: Source directory of C program"
    echo "  arg2: Target directory of C program"
}
#########################################################################################
# Check if no arguments were provided
if [ $# -ne 2 ]; then
    display_help
    exit 1  # Exit with a non-zero status to indicate an error
fi
#########################################################################################
#c_main_files_array=$(grep -rw --include='*.c' -E "main[[:space:]]*\(" $SOURCE_DIR| grep '.*"\\)"[[:space:]]*{' |awk -F':' '{print $1}')
findFilesWithFunctionDefinition "main" "$SOURCE_DIR"
if [ $? -eq 0 ]; then
    exit 0
fi

for file in "${files_array[@]}"; do
    echo "file:$file"
    OUTFILENAME="$TARGET_DIR/"$(basename $file)
    mainMethodExtractor "$file" "$OUTFILENAME"
done
