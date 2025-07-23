- [x] [Vim Tips You Probably Never Heard of{g button}](https://www.youtube.com/watch?v=bQfFvExpZDU&list=WL&index=4)
- `gg` > top of file
- `G`  > end of file
- `gf` > open/create file in a new buffer
- `gd` > find definition
- `gx` > execute/open url or link 
- `gu` > lowercase
	- `guu` lowercase line
- `gU` > uppercase
	- `gUU`
- `g~` > swap case
- `ge` > end of word backward 
- `ctrl g` > file info .. in status bar
- smarter motion {wrap}.. with longer unwrapped lines
	- `gj` `gk` `g0` `g$`
	- `gq {text object}{identifier}`
		- `gqi"` `gqa{`
		- `gqq` wrap the current very long line
		- `gg gq G` wrap whole file
- the opposite of `gq` {warps lines} is `J gJ` {joins lines}
	- `J` join with {just one space} in between
	- `gJ` join next line {keeping its same indentation}
- `gv` > re-select last selection
- `g&` > run last {substitute command} but this time on the whole file {globally}

- `gh` on any part of code 
	- shows more info 
	- shows the hover tooltip
		- useful to know type of variable for example

- `gi` sends you to the last place you left Insert mode 
- `g?` > caeser cipher

# gn
```
*
N
cgn whatever esc
n.
```