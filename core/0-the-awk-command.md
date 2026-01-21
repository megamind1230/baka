#todo
> awk is a pattern-scanning-and-processing-language
> that works on a line-basis manner


```bash
# NF = number of {field}/column
# NR = number of {record}/row
# OFS = output field separator
# ORS = output record separator
# $0 = the whole line
# $1 = first field of the line

# print all except these with this regex
awk '!/regex/' file.txt

# Print line if field 1 matches regex in file.txt
# notice ~ before the regex
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

- [x] having  a `dl-info.txt` file on the format:
	- `movie-name dl-speed(Mb/sec) dl-time-in-mins`
		- using awk, print how many Gigabytes did these movies take you to download
```bash
awk 'NR>1 {sum+=$2*60*$3} END {print sum/1024 "GB"}' dl-info.txt
```



- [ ] search for more awk tricks
- the awk programming lang `book`