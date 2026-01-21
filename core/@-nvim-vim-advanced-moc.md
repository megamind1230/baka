# done or verified ✅
- [x] `:'<,'>!awk '{sum+=$1} END {print sum}'`
	- [x] sum up selected lines of numbers 
- [x] `:%s\s{2}/ | %s/\s$//`
	- `|` pipe for continuation of more cmds
	- replace every 2 spaces with only 1
	- then remove every ending space
- [x] `:!sort -k2 -nr`
	- reverse sort by 2nd column {numerically}
- [x] `vim fileName +number` > open and go to this line number , better works with {non relative line numbers}
- [x] copy line `17` to cursor {cursor on 10 for example} >  `:17t.`
- [x] `noremanp <Up> <NOP>` up arrow is disabled
- [x] [[0-weird-lua-for-nvim]]
- [x] [[0-nvim-vim-regex-replace-or-substitute]]
- [x] [[0-why-better-to-just-use-line-numbers-instead-of-relative]]
- [x] `; ,` vs `n N`
	- `n N` are with `/word` search.. to find in the whole file
	- `; ,` are with `f/F/t/T{char}` to find only in the current line
- [x] how to empty a file in vim > `:%d`
- [x] [[0-nvim-buffers-and-windows-or-splits-and-tabs]]
- [x] `]p` > paste .. respecting the indentation of this line
- [x] ***cursor on brackets*** `>% or <%`  > indents both inside + the brackets
	- [x] `>i{` indents the inside only
 - [x] speical registers
	- `0`  last yank  
	- `"`  unnamed register, last delete or yank  
	- `%`  current file name  
	- `#`  alternate file name  
	- `*`  clipboard contents (X11 primary)  
	- `+`  clipboard contents (X11 clipboard)  
	- `/`  last search pattern  
	- `:`  last command-line  
	- `.`  last inserted text  
	- `-`  last small (less than a line) delete  
	- `equal`  expression register  
	- `_`  black hole register  
- [x] `"_d` delete into the `_` which is the black whole register
	- [x] create a numbered list with macros
	1. on a line start do `:let i=1` 
	2. `qa` `I ctrl r = i enter) esc` `:let i+=1` `q`
	3. then repeat on the line you want
- [x] `:vnew`  vert new buff
- [x] `:tab split` open current buff into another new tab
- [x] `zk/j` go to prev/next fold
- [x] `*` on a word like `three` > matches `three` instances that are ***whole words***
	- [x] meanwhile `g*` would match it even if its a ***subpart of a word***
- [x] `q/` cmd search history
- [x] `:norm @w` on a selection > executes the macro on `w` for each line
- [x] `:center/right/left` > align
- [x] `go` = `gg`
- [x] delete empty lines with regex > `:g/^$/d`
- [x] `10%` > to the 10% spot of in file
- [x] `ctrl 6` > move to last recent file
- [x] time travel with 
	- `:earlier whatever_time`
	- `:later whatever_time`
- [x] `gcc` > comment in vim
- [x] make last line in screen view {not in whole file} centered >
	- `ctrl d M` ***best***
	- `L zz`
	- `ctrl f zz` almost
- [x] easy 1 to 10 in vim
    - `i1<Esc>yy9pV9j g ctrl a` > 1:10
- [x] `:sort! iu` > sort inverse case-insensitive unique
- [x] motion+ regex search
    - `d/someword` > deletes till that `someword` .. not included
- [x] `viwy viwP` > replace a word with another, without losing the first one copied
- [x] delete from start of line till current word `ev_d`
- [x] append to a word `:%s/word/&addtion/g`
- [x] open 2 files into splits
	 - `nvim -o f1 f2` > hori
	 - `nvim -O f1 f2` > vert
	 - `nvim -d file1 file2` opens files in diff mode
		- or if u opened the 2 files in splits already `:windo diffthis`
	 - `:qa` to quit all
- [x] open nvim with a specific config  `nvim -u path/to/config`
	 - [x] `nvim -u none` with no config
- [x] copy a whole func
	 - [x] `vim.keymap.set("n","YK", "va{OVy", desc = "yank func on KnR indenting style")`
	 - [x] `vim.keymap.set("n","YA", "va{Ojy", desc = "yank func on allman indenting style")`
- [x] `:help index` show all cmds
- [x] `:help pattern.txt` learn [[@-regex-or-regular-expressions-moc|regex]] from vim
- [x] `/the\>` will match ***the*** but not `there`
	- [x] `\>` end of word
	- [x] `\<` start of word
- [x] `g!/sum/d` delete all lines without `sum`




# not done
- [ ]   `gp` - put (paste) the clipboard after cursor and leave cursor after the new text
- [ ]   `gP` - put (paste) before cursor and leave cursor after the new text
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
- [ ] `:help 42` for an intriguing easter egg ?
- [ ] if you see a hilited work that's a link that you can put a cursor on and press K or ctrl ] ... ctrl T will get you back
- [ ] github welle/targets.vim
- [ ] `*p` is sys clipboard?
	- [ ] `set clipboard^=unnamed` to use it
- [ ] github junegunn/vim-peekaboo
[vimcasts.org/categories/](http://vimcasts.org/categories/)
[Vim Videos - Flarfnoogins](http://derekwyatt.org/vim/tutorials/index.html)


# neovim manual
vim


delete selection and replace it with the thing on the clipboard {without losing the thing in the clipboard}
       `xnoremap <leader>p "_dP`
                 cuz u delete into the blackwhole reg `"_"`
- vim pages
	- the undo tree
	- using diagraphs
	- marks
	- tips
	- holy grail

# ref
- [ ] [[saving-custom-macros-as-or-into-keybindings]]
- [ ] [[vim-multi-line-editing]]
- [ ] [[cool-nvim-keymaps]]
- [ ] [[0-nvim-the-magical-g-char-or-button-in-vim]]
- [ ] [[nvim-vim-issues-moc]]
- [ ] [[0-nvim-setup-for-programming]]
- [ ] [[quickfix-list-nvim]]
- [ ] [[vimrc-examples]]
- [ ] [[vim-arabic-support]]
- [ ] [[0-nvim-vim-folds]]
- [ ] [[nvim-vim-lsp]]
- [ ] [[nvim-defaults-while-on-insert-mode-tricks]]
- [ ] [[0-nvim-marks-jumps-changes-quickfix-list-and-multi-file-editing]]
- [ ] [Vim Awesome](https://vimawesome.com/) cool website listing all vim plugins