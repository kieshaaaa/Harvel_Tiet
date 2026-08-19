#!/bin/bash

# Check if the correct number of arguments are provided
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <function_name> <main_file_path>"
    exit 1
fi

function_name="$1"
main_file_path="$2"
folder_name="$3"

# Check if the main file exists
if [ ! -f "$main_file_path" ]; then
    echo "Main file does not exist."
    exit 1
fi

# Create a temporary file to store the modified code
temp_file=$(mktemp)

# Run the command and store the output in the "result" variable
result=$(grep -rwn "entry_point" "$folder_name" | wc -l)


# Check the value of "result"
if [ "$result" -eq 0 ]; then
    echo "No lines containing 'entry_point' found."
    # Append the 'int entry_point()' function at the end of the file
    {
        cat "$main_file_path"
        echo "int entry_point () {"
        echo "    int _result =  _$function_name ();"
        echo "    return _result;"
        echo "}"
    } > "$temp_file"

elif [ "$result" -gt 0 ]; then
    echo "Found $result lines containing 'entry_point'."
    # Append the 'int entry_point()' function at the end of the file
    {
        cat "$main_file_path"
        echo "int entry_point_ () {"
        echo "    int _result =  _$function_name ();"
        echo "    return _result;"
        echo "}"
    } > "$temp_file"

else
    echo "An error occurred while running the command."
fi

# Replace the main file with the modified code
mv "$temp_file" "$main_file_path"

echo "int entry_point () function added just above the $function_name function in $main_file_path."
