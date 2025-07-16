instead of 
`rm -f something`
use
```bash
shred -fzvun3 something
	f > force
	z > overwrite with 0's
	v > verbose	
	u > unallocate/delete
	n3 > number of shredding iterations
```