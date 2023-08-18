#!/bin/bash

# This script organizes files by type & sends to a different directory. 

# To run this file, open Terminal and navigate to the directory where the script is saved.
# Run chmod +x organize_files.sh to make it executable.
# Execute the script with ./organize_files.sh.

# Directory where the files are located
SOURCE_DIR="/path/to/source/directory" # Replace with source directory

# Target directory where you want to organize the files
TARGET_DIR="/path/to/target/directory" # Replace with target directory

# Create the target directory if it does not exist
if [ ! -d "$TARGET_DIR" ]; then
  mkdir -p "$TARGET_DIR"
fi

# Function to move files by extension
organize_files() {
  # Get all files from the source directory
  for file in $SOURCE_DIR/*; do
    # Check if it's a file (not directory)
    if [ -f "$file" ]; then
      # Get the file extension
      extension="${file##*.}"
      
      # Create a subdirectory with the name of the extension if it doesn't exist
      if [ ! -d "$TARGET_DIR/$extension" ]; then
        mkdir -p "$TARGET_DIR/$extension"
      fi
      
      # Move the file to the corresponding subdirectory
      mv "$file" "$TARGET_DIR/$extension/"
      echo "Moved $file to $TARGET_DIR/$extension/"
    fi
  done
}

# Call the function to organize the files
organize_files

echo "Files have been organized by type and moved to $TARGET_DIR."
