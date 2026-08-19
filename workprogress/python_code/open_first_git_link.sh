#!/bin/bash

# The URL of the GitHub file you want to open
GITHUB_FILE_URL="https://github.com/subhrendu1987/Reverse-Engineering/blob/master/RevEngg_Project_Data/All_c_codes/divisble_by_5.c"

# The full path to your local HTML file
LOCAL_HTML_FILE="/home/parag/Downloads/ui.vision.html?direct=1&macro=chatgpt_test2"

# Open the GitHub file URL in Firefox
firefox "$GITHUB_FILE_URL" &

# Wait for a specified amount of time (e.g., 10 seconds) before opening the local HTML file.
# Adjust this based on how much time you'd expect the user to spend before needing to open the local file.
sleep 10

# Open the local HTML file in Firefox, possibly in a new tab or window based on Firefox settings.
firefox "file://$LOCAL_HTML_FILE" &



