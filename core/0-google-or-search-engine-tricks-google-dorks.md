![[Pasted image 20250615120045.png]]
site, inurl, intitle, filetype, link, intext, allintitle, cache, related, info, ext, define, phonebook, map, allinurl, before, after, numrange, around(), inanchor


- `"exact thing"` helps error messages
- `-something_excluded` 
- `*` wildcard
	- replaces things (word / phrase) you forgot
	- helps replace your personal directories
- `AROUND(n)`
	- ex:***manager AROUND(4) memory***
		- now manager & memory should be within `[0,4]` words away from each other
- `something before/after: date`
- `something time1...time2`
	- range
- `something site:reddit`
	- results only from reddit
- `something ext/filetype: some-extension`