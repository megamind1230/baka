#1
```bash
awk-Pattern-scanning-and-processing-language
# NF = number of fields/columns
# NR = number of records/rows
# OFS = output field separator
# ORS = output record separator

# print all except these with this regex
awk '!/regex/' file.txt

# Print line if field 1 matches regex in file.txt
awk '$1 ~ /regex/' file.txt

# Print lines with more than 80 characters in file.txt
awk 'length > 80' file.txt

# Specify output separator character.
printf '1 2 3' | awk 'BEGIN {OFS=":"}; {print $1,$2,$3}'


# Access environment variables from within AWK. #wow
awk 'BEGIN {print ENVIRON["LS_COLORS"]}'

# Count number of lines taken from STDIN.
free | awk 'END {print(NR)}'


# Output only lines from FILE between PATTERN_1 and PATTERN_2. Good for logs.
awk '/PATTERN_1/,/PATTERN_2/ {print}' FILE

# Remove duplicate lines #wtf?
awk '!seen[$0]++' file.txt

# Remove all empty lines
awk 'NF > 0' file.txt

# Print 2nd column in lines containing "foo"
awk '/foo/ {print $2}' path/to/file

# Print the last column {, as separator}
awk -F ',' '{print $NF}' path/to/file

# Sum the values in the first column of a file and print the total:
awk '{s+=$1} END {print s}' path/to/file

# Print every 3rd line from the first line:
awk 'NR%3==1' path/to/file

```