# File Organizer Script
---
## Overview

This script organizes files by their extensions and moves them to a specified target directory. Each file type will be placed in its corresponding subdirectory inside the target directory.

## Prerequisites

- A Unix-like operating system
- Bash shell

## Configuration

You must configure the following variables inside the script before running it:

- `SOURCE_DIR`: The directory where the files you want to organize are located. Replace with the actual path.
- `TARGET_DIR`: The target directory where you want to organize the files. Replace with the desired path.

## Usage

1. **Make the Script Executable:** Navigate to the directory where the script is saved and run the following command to make it executable:

   ```bash
   chmod +x organize_files.sh
   ```

2. **Execute the Script:** Run the script using the following command:

   ```bash
   ./organize_files.sh
   ```

3. **Check the Results:** The script will print messages to the terminal as it moves files. You can also navigate to the `TARGET_DIR` to see the organized files.

## How It Works

- Checks if the target directory exists and creates it if necessary.
- Iterates through all the files in the source directory.
- Gets the file extension and checks if a corresponding subdirectory exists in the target directory.
- Creates a subdirectory if needed and moves the file into it.



---


