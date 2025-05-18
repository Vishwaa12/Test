#!/bin/bash

# Define the content of the text file
CONTENT="This is a sample text file for exam preparation."

# Find all CAT 1, CAT 2, SAT, and SEM folders and create info.txt
find . -type d \( -name "CAT 1" -o -name "CAT 2" -o -name "SAT" -o -name "SEM" \) -exec sh -c '
  for dir; do
    echo "$CONTENT" > "$dir/info.txt"
    echo "Created info.txt in $dir"
  done
' sh {} +
