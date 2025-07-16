#1 
#todo
```bash
# whatever lines starts with `Join` do this
sed -i '/^Join s/baka/sussy_baka/g' FILE

# from line 5, till end..  do this
sed -i '5,$ s/baka/sussy_baka/g' FILE

# file1 inserted on line 4 in FILE {r = write}
sed -i '4 r file1' FILE

# Change your sed delimiter to a pipe to avoid escaping slashes.
sed -i 's|/path/to/somewhere/|/path/to/anotherplace/|' FILE

# Print 2nd line , p for print, n for disabling auto printing for all file lines
sed -n '2p' FILE

# Print lines 2:9
sed -n '2,9p' FILE

# Print lines from the one having pattern "any".. till line number 17
# range is 'one,twoCMD'
sed -n '/any/,17p' FILE

# from start print; then on 3 PRINT then quit
sed -n 'p;3q'

# Print lines from the one having "baka" till "maokai"
sed -n '/sussy/,/maokai/p' FILE

# Print last line
sed -n '$p' FILE

# {%Y,%m,%d} in `date cmd` into {%d,%m,%Y}
# idk if its useful ?
date '+%Y-%m-%d' | sed -E "s/([0-9]{4})-([0-9]{2})-([0-9]{2})/\3-\2-\1/"

# add {Chapter 1} line before
sed '/Once upon a time/i\Chapter 1'

# add {The end} line after
sed '/happily ever after/a\The end.'
```


- [ ] sed flags meaning
	- `-E -i -n`