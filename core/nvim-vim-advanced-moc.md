[[saving-custom-macros-as-or-into-keybindings]]

[[vim-multi-line-editing]]
[[0-why-better-to-just-use-line-numbers-instead-of-relative]]


[[0-lua-for-nvim]]
[[cool-nvim-keymaps]]
[[0-nvim-simple-snippets-or-replacements]]

`ctrl 6` > move to last recent file
- [ ] quickfix list


- time travel with 
	- `:earlier whatever_time`
	- `:later whatever_time`


- [x] [[0-the-magical-g-char-or-button-in-vim]]
[[0-nvim-vim-replace-substitute]]

- [x] [[vim-issues]]

# practice
- `vb_d`
- `ev_d`
- `viwy viwp` > replace a word with another
- `viwy viwp` > replace a word with another
- [ ] `gcc` > comment in vim #still/vim
- [ ] vim custom command to copy all file text

- [ ] `:set autowriteall`  save file when changing buffers
- [ ] Multiple Buffers
	```
	One can open up multiple files at the same time and switch between them
	vim file1.c file2.c file3.c ....
	Commands:
	:ls (shows open buffers. %a is the active buffer, # - prev buffer used )
	:bn (switch to buffer #n, :b# is the prev buffer)
	:b partialMath (supply part of an open file name. tab thru list if more than 1)
	:n file(s) (add new files)
	:n
	 (go to next file in the list)
	:prev
	 (go to previous file in the list)
	:find filePattern
	 (find a file contained in vim’s path variable. tab thru list if more than 1)
	```
- [ ]  Split windows or Multiple Tabs
	```
	vim -o file1.c file2.c .....vim -O file1.c file2.c ....vim -p file1.c file2.c ...
	:split
		ctrl w s
	:vsplit
		ctrl w v
	ctrl w hjkl
		move between splits
	:split fileA.html
	:vsplit fileB.py
	:tab ball
	(display files in n panes split horizontally)
	(display files in n panes split vertically)
	(display files with tabs. Maximum 10)
	(current file displayed again in new pane)
	(current file displayed again in new pane)
	(horiz split current pane and add another file)
	(vertical split of current pane and add a file)
	(Convert all buffers into tabs)
	```
- [ ] jump to defi
	```
	gd
	gD
	gf
	gF
	ctrl w gf
	```
- [ ] Saving the current vim state
	```
	:mksession sessionFileName (with no filename listed, session.vim is created)
	This generates a script file that can recreate your settings
	:source sessionFileName
	 (restores previous cursor and window states)
	```
- [ ] oni vs janus vs spacevim
- [ ] `:help 42` for an intriguing easter egg ?
- [ ] if you see a hilited work that's a link that you can put a cursor on and press K or ctrl ] ... ctrl T will get you back
- [ ] `noremanp <Up> <NOP>` up arrow is disabled
- [ ] github welle/targets.vim
- [ ] `*p` is sys clipboard?
	- [ ] `set clipboard^=unnamed` to use it
- [ ] github junegunn/vim-peekaboo
- [ ] vimplug
[vimcasts.org/categories/](http://vimcasts.org/categories/)
[Vim Videos - Flarfnoogins](http://derekwyatt.org/vim/tutorials/index.html)

- vim surround
	```
	ds' to delete the surrounding 
	cs'" to change the surrounding
	ysaptli> surround paragraph with <li> tag
	S{char} surround selection
	```
- delete empty lines with regex
	- `:g/^$/d`
	- :g will execute a command on lines which match a regex. The regex is 'blank line' and the command is :d (delete)
# neovim manual
- `:help index` show all cmds
- `:help pattern.txt` learn [[0-regex-or-regular-expressions-MOC|regex]] from vim
- `/the\>` will match ***the*** but not `there`
	- `\>` end of word
	- `\<` start of word
- [x] 56
nvim X vs x
	same as backspace & delete with characters
- [ ] [Vim Awesome](https://vimawesome.com/)
	- cool website listing all vim plugins





vim
    `gv` > re-select last selection
    insert mode
        `ctrl h` > delete 1char back
        `ctrl w` > delete 1word back
        `ctrl u` > delete till line start
    vim fileName +number > open and go to this line number
    this better works with {non relative line numbers}
         wanna copy line 17 to the line below ur cursor {cursor on 10}
               `:17t.`
    open 2files into splits
         `vim -o f1 f2` > hori
         `vim -O f1 f2` > vert
    copy a whole func
         `vim.keymap.set("n","YY", "va{Vy",opts)`
    open nvim with a specific config
         `nvim -u path/to/config`
         `nvim -u none`


insert mode
       auto complete > ctrl p/n
append more to a word
       `:%s/word/&addtion/g`
delete selection and replace it with the thing on the clipboard {without losing the thing in the clipboard}
       `xnoremap <leader>p "_dP`
                 cuz u delete into the blackwhole reg "_"
motion+regex
    `d/someword` > deletes till that word in file

`:sort! iu` > sort inverse case-insensitive unique

[[vimrc-examples]]
[[nvim-buffers-and-windows-or-splits-and-tabs]]
[[vim-arabic-support]]
[[vim-nvim-folds]]

insert mode
       `ctrl n/p` or `ctrl xi` > single word complete
       `ctrl xl` > identical lines complete

easy 1 to 10 in vim
    `1<Esc>yy9pV9j g ctrl a` > 1:10


make last line in screen view {not in whole file} centered >
	`L zz`
	`ctrl d M`
	`ctrl f zz` almost

`10%` > to the 10% spot of in file


[[0-nvim-setup-for-programming]]