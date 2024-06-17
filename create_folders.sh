#!/bin/bash

# Loop through ASCII values for A (65) to Z (90)
for i in {A..Z}; do
  # Create a directory for each letter
  mkdir "$i"
done

echo "Folders from A to Z created successfully."
