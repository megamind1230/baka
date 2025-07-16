#1
- [x] https://www.vimfromscratch.com/

- how to edit a saved macro {just works on vim/neovim .. not on obsidian version of vim}
	- easy.. just remember that the macros are saved in registers
		- see `:reg` to view all of them
	- ex: you have marco on `a`
		- then `"ap` to ***paste*** in as text {better not to have any }
		- edit
		- then ***yank*** into register again `"ay`
- disable arsow keys.. this is  init.vim or .vimrc
	```
	noremap <Up> <Nop>
	noremap <Down> <Nop>
	noremap <Left> <Nop>
	noremap <Right> <Nop>
	```
- 

