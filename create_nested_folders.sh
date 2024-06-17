#!/bin/bash

# Function to create A-Z folders
create_folders() {
  for i in {A..Z}; do
    mkdir -p "$1/$i"
  done
}

# Main script
if [ -z "$1" ]; then
  echo "Please provide a string parameter."
  exit 1
fi

# Create the top-level A-Z folders
create_folders "."

# Iterate through each character of the input string
current_path="."
for (( i=0; i<${#1}; i++ )); do
  char="${1:$i:1}"
  current_path="$current_path/$char"
  create_folders "$current_path"
done

echo "Nested folders created successfully based on the input string: $1"
