#1
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
# not done

- [ ] why ? in normal mode `J` deletes enters
	- `J` joins the line the cursor is on with the line below
		- how to use on multi lines
		- `gJ` respects the below lines indentation
	- `K` is used for keyword search but isn’t yet implemented in VSCodeVim.
- [ ] shift 2,3 in vim? highlights ?
- [ ] how to fast surround small words with `` in vim

- [ ] how to go to start of file in vim?
- [ ] how to highlight or select whole file
- [ ] `ctrl c` > escape same as `ctrl [` 
- [ ] `ctrl a, x` > increment , decrement number
- [ ] `ctrl a` in vim ? why does not select all {in insert mode} ?
- [ ] how to resize tabs / splits in vim& vscodevim & vscode ?
- [ ] how to empty a file in vim > `:%d`
- [ ] `ca"` > deletes whatever in between "" .. as long as the cursor on same line (not between necessarily )
- [ ] S normal mode indent in vim
- [ ] :help j .. manual of j in vim
- [ ] how to delete till end of line in insert mode (vim) like opposite of `ctrl u` ?
- [ ] `ctrl f`
	- cus it does not do something important in vim
- [ ] `jk`
	- now > `jk` in insert mode vim = `esc`
		- and still esc works
- [ ] `ctrl shift c` opens terminal with current file path
- [ ] `; ,` vs `n N`
	- `n N` are with `/word` search.. to find in the whole file
	- `; ,` are with `f/F/t/T{char}` to find in the current line
- [ ] why ? in normal mode `H` `L` start / end of file
	- go low, high, middle of screen `L` `H` `M`
- [ ] why when I select (not in visual mode) then yank it is not saved in yank buffer ?
	- no it works

- [ ] How to close all buffers except the current one `:%bd|e#`
- [ ] how to rename current file `:!mv old new`