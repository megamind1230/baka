#1 
```txt
write me a bash script that does the logic of this pseudo code below:

{
variable files = list of all untracked and changed fiiles

max number of files uploaded at once = 5

variable package = the 5 files from top of the list

if( package == 0 )
exit script

if(package < 5 )
git add all

if(package ==5)
git add package

commit message = first line of text in package

git push origin master

update package so it does not show the pushed files again

echo all is done
}
```

```bash


# gpt

#!/bin/bash

# Get the list of all untracked and changed files
files=$(git status --porcelain | grep '^[?MA]' | awk '{$1=$1; print $0}' | sed 's/^.. //')

# Convert files to an array (using newline as the delimiter)
IFS=$'\n' read -r -d '' -a files_array <<< "$files"

# Max number of files uploaded at once
max_files=5

# Loop until all files are processed
while [ ${#files_array[@]} -gt 0 ]; do
    # Get the first package of files (up to max_files)
    package=("${files_array[@]:0:$max_files}")
    package_count=${#package[@]}

    # Exit script if no files to process
    if [ $package_count -eq 0 ]; then
        exit 0
    fi

    # Add files to staging
    if [ $package_count -lt $max_files ]; then
        git add .
    else
        for file in "${package[@]}"; do
            git add "$file"
        done
    fi

    # Get the commit message as the first line of text in the first file of the package
    commit_message="${package}"

    # Commit and push the changes
    git commit -m "$commit_message"
    git push origin master

    # Update the files array to exclude the processed files
    files_array=("${files_array[@]:$max_files}")
done

echo "All is done"


```