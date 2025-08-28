# review notes
- make all have #1
- a query of all non-finished notes
	- query meaning > list all notes that does start with `0` in its name
```query
-(file: /^0/)
```

# MOC files
```dataview
TABLE
WHERE contains(file.name, "MOC")
```

أ