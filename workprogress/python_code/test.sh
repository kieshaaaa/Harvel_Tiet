#!/bin/bash

# The URL to open
URL="https://github.com/"

# Open Firefox with the URL
firefox -new-window "$URL" &

# Small delay to ensure Firefox launches
sleep 2

# Maximize the Firefox window
wmctrl -r "Firefox" -b add,maximized_vert,maximized_horz
