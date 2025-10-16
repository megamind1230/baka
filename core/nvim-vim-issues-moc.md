# not done
- [ ] how to delete till end of line in insert mode (vim) like opposite of `ctrl u` ?
- [ ] normal / insert `ctrl f` cus it does not do something important in vim
- [ ] `ctrl shift c` opens terminal with current file path
- [ ] why ? in normal mode `H` `L` start / end of file
	- go low, high, middle of screen `L` `H` `M`
- [ ] why when I select (not in visual mode) then yank it is not saved in yank buffer ?
	- no it works
- [ ] How to close all buffers except the current one `:%bd|e#`
- [ ]  ``` :*y b yank previos selection into reg b ```
- [ ] gwip ?
- [ ] set arabic in neovim


# done
- [x] `ctrl r anyRegister`  insert mode and cmd mode
	- paste register 
- [x] how to replace simple encapsulators like `{} () <> "" '' []`
	- `di"vhp` try on 
		- `int mid = nums.size"jklsdjfsd" / 2;`
	- https://stackoverflow.com/questions/2084210/how-to-quickly-remove-a-pair-of-parentheses-brackets-or-braces-in-vim
- [x] to surround something with a simple encapsulator
	- first make sure to have a space after
		- then ```d_i` esc p``` try on this
			- encapsulte me 
- [x] how to copy paste from vim into your clipboard to other apps
	- just yank it inside your {`+` register} 
	- select then
	- `"+y` to copy to clipboard
	- `"+p` to paste from clipboard