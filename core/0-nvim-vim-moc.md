# intro
- [x] a great video to save for later [Neovim Config Switcher - YouTube](https://www.youtube.com/watch?v=LkHjJlSgKZY)
- it is not about `vim` itself.. it is about `vim motions efficiency`
- `vimtutor` in shell to learn vim inside terminal in linux
- a buffer = a file in vim sometimes
- vim is harder to get into windows
	- but use it [online](https://www.vimonlineeditor.com/)
	- or VSCodeVim extension
```c
how to learn neovim
Learning Neovim can be a rewarding experience, especially if you're looking for
a highly customizable and efficient text editor. Below is a roadmap to help you
get started and progressively master Neovim:

---

### **Phase 1: Getting Started**
1. **Understand the Philosophy of Neovim**
   - Neovim is a fork of Vim, focusing on extensibility, usability, and modern features.
   - It’s modal (Normal, Insert, Visual, Command modes) and highly keyboard-driven.

2. **Install Neovim**
   - Download and install Neovim from the official website: [neovim.io](https://neovim.io/).
   - Ensure it’s properly set up in your terminal.

3. **Learn the Basics of Vim**
   - Start with Vim’s built-in tutorial by running `vimtutor` in your terminal.
   - Learn the basic modes:
     - **Normal mode**: For navigation and commands.
     - **Insert mode**: For typing text.
     - **Visual mode**: For selecting text.
     - **Command mode**: For executing commands (e.g., `:wq` to save and quit).

4. **Practice Basic Commands**
   - Movement: `h`, `j`, `k`, `l`, `w`, `b`, `gg`, `G`.
   - Editing: `i`, `a`, `o`, `O`, `dd`, `yy`, `p`, `u` (undo), `Ctrl+r` (redo).
   - Saving and quitting: `:w`, `:q`, `:wq`, `:q!`.

5. **Configure Neovim**
   - Learn about the `init.lua` file (located in `~/.config/nvim/`), which is Neovim’s configuration file.
   - Start with a minimal configuration and gradually add plugins and settings.

---

### **Phase 2: Intermediate Skills**
1. **Learn About Buffers, Windows, and Tabs**
   - Buffers: Files loaded into memory.
   - Windows: Splits within the same buffer.
   - Tabs: Collections of windows.
   - Commands: `:e`, `:bnext`, `:bprev`, `:split`, `:vsplit`, `:tabnew`.

2. **Master Text Manipulation**
   - Learn advanced editing commands:
     - `ciw` (change inside word), `caw` (change around word).
     - `f`, `t`, `;` for quick navigation.
     - Macros: Record (`q`) and replay (`@`) macros.

3. **Explore Search and Replace**
   - `/` for searching, `n` and `N` for navigation.
   - `:%s/old/new/g` for global search and replace.

4. **Customize Your Workflow**
   - Learn Lua basics to customize Neovim.
   - Add keybindings and custom commands to your `init.lua`.

5. **Install Plugins**
   - Use a plugin manager like [packer.nvim](https://github.com/wbthomason/packer.nvim) or [lazy.nvim](https://github.com/folke/lazy.nvim).
   - Start with essential plugins:
     - File explorer: [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua).
     - Fuzzy finder: [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim).
     - Syntax highlighting: [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter).

---

### **Phase 3: Advanced Usage**
1. **Deepen Your Lua Knowledge**
   - Learn Lua scripting to write custom functions and plugins.
   - Understand Neovim’s API (`vim.api`).

2. **Optimize Performance**
   - Profile your startup time with `:StartupTime`.
   - Lazy-load plugins to improve performance.

3. **Version Control Integration**
   - Use plugins like [vim-fugitive](https://github.com/tpope/vim-fugitive) for Git integration.

4. **Debugging**
   - Set up debugging with [nvim-dap](https://github.com/mfussenegger/nvim-dap).

5. **Explore Language Servers**
   - Set up [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) for language server protocol (LSP) support.
   - Use [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) for autocompletion.

---

### **Phase 4: Mastery**
1. **Contribute to the Community**
   - Contribute to Neovim or plugin development.
   - Share your configuration on GitHub.

2. **Build Your Own Plugin**
   - Write a custom plugin to solve a specific problem.

3. **Stay Updated**
   - Follow Neovim’s development on GitHub and the official forums.
   - Keep up with new plugins and features.

4. **Teach Others**
   - Write blog posts, create tutorials, or mentor others learning Neovim.

---

### **Resources**
- **Documentation**: [Neovim Docs](https://neovim.io/doc/).
- **YouTube Channels**: ThePrimeagen, Chris@Machine.
- **Books**: "Practical Vim" by Drew Neil.
- **Communities**: Reddit’s [r/neovim](https://www.reddit.com/r/neovim/), Neovim Discord.


vim resources
    vimgolf
    vimcast
    learning vi and vim book
    practical vim book
    subreddits, dev.to, discord
    repos
        vimawesome
---

By following this roadmap, you’ll gradually become proficient in Neovim and unlock its full potential as a powerful text editor and IDE. Happy coding! 🚀
```



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
- also used to replace some patterns with others using [[0-regex-or-regular-expressions-MOC|regex]]
- `:r !ls -lah` > list all files in pwd and read them into nvim

### visual mode
visual char-wise `v`
visual line-wise `V`
visual block-wise `ctrl v`
`o` in visual mode > switch between start/end

# keybindings or shortcuts
## basics
- edit
	- `y` > yank or copy , `yy` `Y` > yank line
	- `p` > paste after cursor, `P` > paste before
	- `d` > cut and delete
		- `dd` > delete line (while still in normal mode)
			- `cc` > change line {delete} (enter insert mode)
		- `D` > delete rest of line
			- `C` change it
			- `c$` `C` #shortcuts/better > change till the end of line
	- `u` > undo , `ctrl r` > redo , same as mentioned 5u
	- `~` swap letter case {both `visual and normal`}
		- `gu` > lower case {just in `visual`}
		- `gU` > upper case {just in `visual`}
	- `r{char}` > replace just current char with {char}
		- `R` > replace as you go till you hit `esc` 
	- `s` > substitute char (enters insert mode)
		- `x` > delete char{forwards} {not entering insert mode} , `X` > same {backwards}
		- delete whole line while in `normal mode`
			- `S` > same as `dd` {del whole line} but + `insert mode`
			- `C` > del rest of line + insert mode
- move and navigate
	- `:20` or `20G` or `20gg` all same > go line 20
		- `:.+50`
		- `:.-70`
	- `ctrl g` > file info {path/ status/ percentage of where you are}
		- `25%` > go to 25% of file
	- vertical
		- `gg` > top of file , `G` > end of file 
			- `{line}gg` `:{line}`> go to line
		- `{}` move in paragraph steps or {better said} ***navigate between blank lines***
		- `()` move in sentence steps {navigate between sentences}
		- `ctrl f/b` > scroll full page up/down {foreward/backward} 
		  {btw the cursor moves also}
			- `ctrl u/d` > half page up/down 
			- `ctrl y/e` > one line extra up/down
	- horizontal
		- `0` > line start,  `$` > line end 
			- `^` same as `0w` go {first} non blank word in line 
			- `g_` {last} non blank word in line 
	- both
		- `#` `*`  exact matches back/forth
			- {both on middle fingers XD}
			- meanwhile `g#` `g*` for partial matches back/forth
		- `%` > corresponding bracket
			- `d%` `c%`
		- `w` > jump a word after
			- `b` > jump a word before
			- `e` > jump to end of word
				- `ge` > jump to the end of a word before
			- `W` > jump a WORD after 
				- {same as word but ignore punctuation}`This_Is_A_WHOLE_WORD(WORD)`
				- `B` `E` `gE`

```
somehow this is a word this_is_a_test
but this is a WORD this-is-a-test
```


- bookmark
	- `m{char}` bookmark current line with {char}  
		- `'{char}` go back {even works in [[0-Vimium-extension-for-browsers|Vimium]]}
		- good for reading through code
	- btw: `''` > goes {back to where I was} before the last motion I did
- code style and cursor view
	- `>> << == indent, format in `normal mode`
		- use once in `visual mode`
	- `zz zt zb` > drag line the cursor is on to center/top/bottom of view
	- `gg=G` indents the whole file
	- `H,M,L` > put the cursor high/mid/low on current view

---
## intermediate: melodies, count, search
- vim simple grammer formula {melodies}
	- melodies are a flow of keyboard keys .. pressed for a purpose
		- imagine that vim is a ***musician*** who 
			- gives you a good feedback on good melodies you play
			- and a bad one on a bad melody .. or sometimes would ruin your day
			- good melodies should be sometimes played in a specific order
		- the most commonly used complete melody
			- has the structure of `vmn` or `{verb}{modifier}{noun}`
				- `verb` 
					- like d, c, y, v
						- notice that p is not here tho .. cuz you just paste .. nothing fancy
						- while deleting and so could be fancy.. delete { a word?, a paragraph?, up to something you want? etc }
				- `modifier`
					- like 
						- i > inside
						- a> around
						- NUM > any number
						- f{char} > find and stand on char
						- t{char} > find and stand before char (till)
						- / > search forward
						- ? > search backword `soemthing`
				- `noun`
					- like
						- w > word
						- s > senetence
						- p > paragraph
						- any type of enclosures or bracket > `[ { < ( " '` even the back-tick
		- sometimes we can name the structure as
			- `{operator}{count}{motion}` > `d3j`
			- or `{operator}{identifier}{text object}` > `daw` `di"`
			- but they are not as good as {verb-mod-noun}
- `/` search with `ciw` to change `esc` then `n` next `.` > repeat {last done commands} 
	 - `*` forward search for word under cursor, opposite in `#`
	 -  `\<dog\>` searches only for `dog` as a single word
- `ea` > insert after current word
- `dw` > delete (rest of) word after {with whitespace}
	- `db` > delete (rest of) word before {not whitespace}
- `diw` > delete word that I am in {not whitespace}
	- `ciw` > change word that I am in {not whitespace}
	- `daw` `caw` > with whitespace
	- `yiw` > yank word that I am in
	- `ci"` > change just the thing between ""
		- also `di"` 
		- same with different brackets
			- `ci(`  `ci{`  `ci[`  `ci<` 
	- `vap` > visually select a paragraph
		- `vi{` `vi"` `va(`
	- search char / find char in `current line`
		- `t{char}` > go till/before it .. `T{char}` backwards
			- `;` `,` next or previous match 
			- `dt(`
			- `search(vector<int> &nums, int target)`
				- cursor on {v} of vector then
				- `vt)yo esc p` copy parameters to next line
		- `f{char}` > find and stand on it `F{char}` backwards
			- `;` `,` next or previous match 
			- `df(` { ( included }
		- `let damage = weapon.damage * d20();`
			- go to {last d} > `fd;;`
		- `hello a1 a2 a3 a4 a5 a6`
			- `fa3;` > finds **4th** {a} in current line
	- search a word / find a word in `whole file`
		- `/whatever` > search forward .. `?whatever` backwards
			- `enter` > ready to edit 1st instance, `n` > next found, `N` > previous one
			- `/enter` `?enter` do last search again
				- either search after OR before
			- enabling highlighted search `vim.hlsearch`
		- `2/baby` flies to 2nd baby in file 

# more ref
- [ ] [[boost-your-coding-fu-book-or-learnVim-vscode-extension]]
- [ ] [[vim-from-scratch]]
- [ ] [[vim-rtorr]]
- [ ] [[vim-issues]]
- [ ] [cheat sheet](https://www.barbarianmeetscoding.com/boost-your-coding-fu-with-vscode-and-vim/cheatsheet)
- [ ] [look at available in VSCodeVim now](https://github.com/VSCodeVim/Vim/blob/master/ROADMAP.md)
- [ ] [[vimbegood-theprimeagen]]
- [ ] [[vscodevim-extra-key-remapping]]
- [ ] [Learn Vim](https://learnvim.irian.to/)
- [ ] [really cool vim tricks and challenges ](https://www.vimgolf.com/)
- [ ] [Quickref - Neovim docs](https://neovim.io/doc/user/quickref.html#quickref)
- [ ] [Tips - Neovim docs](https://neovim.io/doc/user/tips.html#tips)
- [ ] [Help - Neovim docs](https://neovim.io/doc/user/index.html#bars)
# sub mocs
- [x] [[nvim-vim-advanced-moc]]
- [x] [[0-nvim-plugins-moc]]