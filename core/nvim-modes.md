# modes
- modal editor {depends on modes}

### normal mode
- can copy - paste - search - navigate and not directly adding text
- `5 any_of_hjkl` > moves 5 steps in that direction
- how to exit file vim ?
	- `:q` > if no changes done
	- `:q!` > if don't want to save them {made changes by accident}
		- `:!whatever` vim would run that `whatever` shell command
			- that's why `:!q` dont work > `q` is not a shell command
	- `:wq` > if want to save them {same as `:x`}
		- `ZZ` > quit and save
			- better + faster than `:wq`
		- `ZQ` > quit and no save

### insert mode
- 6 ways {not all ways though} to enter insert mode `i I a A o A`
- `esc` `ctrl c` `ctrl [` > back to normal mode


### ex command mode
- `:sort`
	- `:sort!` > reverse sort
	- `:sort u` > unique
- `:set number` > show line numbers
	- `:set relativenumber` > along with number to better for vim
		- enable relative line numbers > `_line numbers_ configuration` and setting it to relative.
			- #shortcuts/vim/vscode/vimed in `editor.lineNumbers` this is the editor ID.. you can copy it
- `:set mouse=a` > mouse actions activated
- `:set tabstop=4` 
	- `:set shiftwidth=4` 
	- `:colorscheme whatever`
	- `:set autoindent`
- also used to replace some patterns with others using [[@-regex-or-regular-expressions-moc|regex]]
- `:r !ls -lah` > list all files in pwd and read them into nvim

### visual mode
- visual char-wise `v`
- visual line-wise `V`
- visual block-wise `ctrl v`
- `o` in visual mode > switch between start/end
	- [x] `O` to switch the diagonal
