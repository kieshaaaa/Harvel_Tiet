#!/bin/bash

# Check if an input file path is provided
if [ $# -eq 0 ]; then
  echo "Usage: $0 <input_file>"
  exit 1
fi

input_file="$1"

# Use grep with a regular expression to find and extract function names
function_names=$(grep -oE '([a-zA-Z_][a-zA-Z0-9_]*)[[:space:]]*\([^)]*\)' "$input_file" | sed 's/[[:space:]]*(.*)//')

# Print the extracted function names
#echo "Found function names:"
#echo "$function_names"

# Store the first element of function_names in a variable
first_function_name=$(echo "$function_names" | head -n 1)

# Print the first function name
echo "$first_function_name"

