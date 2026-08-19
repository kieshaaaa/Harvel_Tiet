#It is the selenium automation which is use to copy the content of the one input file and then paste it in the chatgpt then get the output and then open the output file and paste the output code in that  

#!/bin/bash

# Check if two arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <path to input.txt> <path to output.txt>"
    exit 1
fi

# Assign the command line arguments to variables
FILE1="$1"
FILE2="$2"

# Counter to keep track of the number of lines processed
count=0

# Use paste to join lines from both files side by side, separated by a tab
# Read each combined line into the variables 'line1' and 'line2'
while IFS=$'\t' read -r line1 line2
do
    # Increment line counter
    ((count++))

    # Break the loop after processing 5 lines
    if [ $count -gt 30 ]; then
        break
    fi

    # Print the current count
    echo "Processing line: $count"

    # The URL of the GitHub file you want to open
    GITHUB_INPUT_FILE_URL="$line1"

    # The full path to your local HTML file
    LOCAL_HTML_FILE_PART_1="/home/parag/Downloads/ui.vision.html?direct=1&macro=RevEngg_part1"

    # Open the GitHub file URL in Firefox
    firefox  "$GITHUB_INPUT_FILE_URL" &

    # Wait for a specified amount of time (e.g., 10 seconds) before opening the local HTML file.
    sleep 10

    # Open the local HTML file in Firefox, possibly in a new tab or window based on Firefox settings.
    firefox "file://$LOCAL_HTML_FILE_PART_1" 

    echo "Waiting..."
    sleep 120


    # The URL of the GitHub file you want to open
    GITHUB_OUTPUT_FILE_URL="$line2"

    # The full path to your local HTML file
    LOCAL_HTML_FILE_PART_2="/home/parag/Downloads/ui.vision.html?direct=1&macro=RevEngg_part2"

    # Open the GitHub file URL in Firefox
    firefox  "$GITHUB_OUTPUT_FILE_URL" &

    # Wait for a specified amount of time (e.g., 10 seconds) before opening the local HTML file.
    sleep 10

    # Open the local HTML file in Firefox, possibly in a new tab or window based on Firefox settings.
    firefox "file://$LOCAL_HTML_FILE_PART_2" 

    echo "Waiting..$count completed"
    sleep 80


done < <(paste "$FILE1" "$FILE2")
