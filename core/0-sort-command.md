#1 
- `sort -k4 -t: -n /etc/passwd`
	- sort ***numerically*** using the 4th field
	- knowing that the terminator/delimiter is `:`
- show me the usernames that uses bash as its shell
	- `grep bash$ /etc/passwd | cut -f1 -d:`
- with `cut` use `-d`.. with `sort` use `-t`
	- `cut -c 5 f.txt` shows 5th char in file .. cut uses ***tab*** as default delimiter
	- 