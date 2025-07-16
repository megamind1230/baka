>btw does not work with obsidian the way expected

#1
```bash
#!/bin/bash

# Check if a directory is provided, otherwise use current directory
DIR="${1:-.}"

# Change to the specified directory
cd "$DIR"

# Loop through files with spaces in their names
for file in *\ *; do
    # Skip if no files with spaces exist
    [ -e "$file" ] || continue

    # Create new filename by replacing spaces with dashes
    new_name=$(echo "$file" | sed 's/ /-/g')

    # Rename the file
    mv "$file" "$new_name"
    echo "Renamed: '$file' to '$new_name'"
done
```