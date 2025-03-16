#!/bin/bash

rename_js_to_jsx() {
    local directory="$1"
    find "$directory" -type f -name "*.js" | while read -r file; do
        mv "$file" "${file%.js}.jsx"
        echo "Renamed: $file -> ${file%.js}.jsx"
    done
}

read -p "Enter the directory path: " directory
if [ -d "$directory" ]; then
    rename_js_to_jsx "$directory"
else
    echo "Invalid directory path!"
fi
