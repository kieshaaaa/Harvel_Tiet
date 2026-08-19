#!/bin/bash
### Example usage: cd Reverse-Engineering/CHStone/C_code; $bash extractMain_cscope.sh aes/ ./temp
# Main Execution
SOURCE_DIR="$1"
TARGET_DIR="$2"
mkdir -p $TARGET_DIR
FULL_PATH_TARGET=$(realpath "$TARGET_DIR")
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
# To find a different function use appropriate function name instead of "main"
funcName="main"
cd $SOURCE_DIR; cscope -b; cscope -dL -2 "$funcName" > $FULL_PATH_TARGET/FcallFrom_"$funcName".log
#echo "<FileName> <FuncName> <LineNo> <Code>"
#cat "$FULL_PATH_TARGET/FcallFrom_"$funcName".log"
#########################################################################################
awk 'BEGIN {print "["}
    {
    # Extract first three columns
        col1 = $1
        col2 = $2
        col3 = $3
        
        # Extract the rest of the line after third column as a single column
        rest = substr($0, length($1 $2 $3) + 4)
        
        print "{\"FileName\":\""col1"\",","\"FuncName\":\""col2"\"",",\"LineNo\":\""col3"\"", ",\"Code\":\""rest"\"}"
    }
    END {print "]"}
' "$FULL_PATH_TARGET/FcallFrom_"$funcName".log" | tee "$FULL_PATH_TARGET/FcallFrom_.json"
rm "$FULL_PATH_TARGET/FcallFrom_"$funcName".log"

echo "File created: $TARGET_DIR/FcallFrom_"$funcName".json"
