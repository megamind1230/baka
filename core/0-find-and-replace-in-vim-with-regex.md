#1
# How to Find and Replace in Vim using regex
[How to Find and Replace in Vim](https://www.youtube.com/watch?v=PzmLJy0o6qo)

```c
// %s {all rows} , g{all cols}
// all
:%s/is/isn't/g  >> means search for {is} replace it with {isn't} globally

// just the line I am in
:s/is/isn't/g

// just the first instance of each line
:%s/is/isn't

// replace every lone # the start of line with nothing (delete every h1)
:%s/^#//

// how to change special chars
	//either by escaping them with \
	// or by using a different delimiter
:%s#/#+/g  >> changes every {/} into {+} .. so we just used a different delimiter


// how to replace inside a range of lines
:x,ys/old/new/g > x,y specify the range of lines to which the replacing happens
	instead of `x,y` we use `%` for the whole file.. you know

:'<,'>s/^.*$/[[&]]/g
	good with obsidian backlinks
	`&` represents the whole matched pattern
	More efficient since it doesn't use capture groups

```



# advanced
```
:%s/\[\[\(.\{-}\)-\(nvim-plugin\)\]\]/[[\2-\1]]/g

does this
[[matchit-nvim-plugin]] 
[[nvim-plugin-matchit]]


```

## regex or substitute flags
```
/g > replace accross the whole line
/i > In-sensitive case
	/I > sensitive case
/c > confirm before replace
```