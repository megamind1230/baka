- [x] [Vim Tips You Probably Never Heard of{g button}](https://www.youtube.com/watch?v=bQfFvExpZDU&list=WL&index=4)
- [x] `gg` > top of file
- [x] `G`  > end of file
- [ ] `gf` > open/create file in a new buffer
- [x] `gd` > find definition {local}
- [x] `gx` > execute/open url or link 
- [x] `gu` > lowercase
	- [x] `guu` lowercase line
- [x] `gU` > uppercase
	- [x] `gUU` uppercase line
- [x] `g~` > swap case
- [x] `ge` > end of word backward 
- [x] `ctrl g` > file info .. in status bar
- [ ] smarter motion {wrap}.. with longer unwrapped lines
	- `gj` `gk` `g0` `g$`
	- `gq {text object}{identifier}`
		- `gqi"` `gqa{`
		- `gqq` wrap the current very long line
		- `gg gq G` wrap whole file
- [ ] the opposite of `gq` {warps lines} is `J gJ` {joins lines}
	- `J` join with {just one space} in between
	- `gJ` join next line {keeping its same indentation}
- [x] `gv` > re-select last selection
- [x] `g&` > run last {substitute command} but this time on the whole file {globally}

- [ ] `gh` on any part of code 
	- shows more info 
	- shows the hover tooltip
		- useful to know type of variable for example

- [x] `gi` go to last place for Insert mode 
- [x] `g?` > caeser cipher

# gn
```
*
N
cgn whatever esc
n.
```