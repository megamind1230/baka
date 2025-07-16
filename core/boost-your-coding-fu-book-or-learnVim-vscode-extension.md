#1
- [course link](https://www.barbarianmeetscoding.com/boost-your-coding-fu-with-vscode-and-vim/table-of-contents)
- copy your VSCodeVim json file [[0-vscodevim-json-file|here]] #still/paste
- [[vscode-issues|issues I saw along the way]]
# ch5 YOUR FIRST BABY STEPS IN VIM
- angry with vim weird remapping behavior of `ctrl`
	- set `vim.useCtrlKeys` to false 
	- or customize -->> `vim.handleKeys` #shortcuts/better 
		- The complete lists of the keys that are affected by this remapping can be found in the [package.json](https://github.com/VSCodeVim/Vim/blob/master/package.json) file of the VSCodeVim extension under the key bindings section.


# ch7 EDITING LIKE MAGIC WITH VIM OPERATORS
- melodies is the flow of keyboard keys pressed for a purpose
	- `{operator}{count}{motion}` > `d3j`
	- `{operator}{identifier}{text object}` > `daw` `di"`
- `d/hello` > delete until you find {hello} #shortcuts/better 
- What is a document composed of? 
	- Words, sentences, quoted text, paragraphs, blocks, {HTML} tags, etc.
		- These are `text objects`
- text objects manipulation in vim
	- `a` ({a} text object %%plus%% whitespace ) , `i` ({i}nner object %%but not%% whitespace)
	- text objects {identifiers} in vim
		- `w` > word
		- `s` > sentence #shortcuts/better 
		- `p` > paragraph #shortcuts/better 
		- `t` > html tag
		- `(` > block surrounded by ()
		- `{` > block surrounded by {}
		- `[` > block surrounded by `[]` 
		- `'` > block surrounded by ''
		- `"` > block surrounded by ""
		- `<` > block surrounded by <>
	- `hello guys! This Is a 'trial'. `
		- `daw diw ciw` on hello (notice what happens on spaces)
		- `das dis` on two sentences
		- `da' di' ci'` on trial
			- same with `( { [ < " t`
	- `dap` > deletes a whole paragraph {paragraphs must be whitespace-separated} like with 
		- global function
		- class
		- anything not nested
	- `dat` > deletes html tag {tags included}
		- `dit cit` don't include tags to be deleted


# ch9 INSERTING TEXT A LA VIM
- deleting within `Insert mode` #shortcuts/better 
	- `ctrl h` delete {character} before 
	- `ctrl w` delete {word} before 
	- `ctrl u` delete {line} before 
		- remember in `normal mode` `ctrl d` , `ctrl u` are for navigation not deleting #shortcuts/vim/disabled 
# ch11 SWITFLY OPERATING ON SEARCH MATCHES
- faster way to delete instance of a {word} I search for
	- instead of `/word daw n.n.n.` - we can `/word dgn ...`
		- or cursor on it then `* dgn ...` `# dgn ...` #shortcuts/better 

# ch12 PUSHING THE BOUNDARIES OF COPYING AND PASTING
- `yaw`
	- copy words and spaces after(trailing)
	- `yaW` #shortcuts/better 
		- copy WORDS and spaces after {like functions definitions or calls}
- swapping 
	- lines > `ddp`
	- chars > `xp`
- registers
	- `unnamed register "` is where you copy and cut stuff to, when you don’t explicitly specify a register. The default register if you will.
	- `named registers a-z` are registers you can use explicitly to copy and cut text at will
	- `yank register 0` stores the last thing you have yanked (copied)
	- `cut registers 1-9` store the last 9 things you cut by using either the delete or the change command
	- how to use {copy paste}(normal mode)
		- `"ayas` yanks a sentence and stores it in register a.
		- Now if you want to paste it somewhere else, you can type `"ap`
		- #shortcuts/better Alternatively, using the capitalized version a register (`A` instead of a) {{appends}} whatever you copy or cut into that register.
	- paste (`insert mode`)
		- remember in normal > `ctrl r` undo
		- but here in insert mode it helps you use registers
		- `ctrl r "` `ctrl r a` `ctrl r 0` (tiny tip for psychopaths.. it does not override the char just after.. it's left as it was)

# ch13 CONTROL VSCODE WITH COMMAND-LINE MODE
- the 4th mode in vim is `Ex commands mode` triggered with `:`
	- Whenever you need to change multiple lines, it may be a faster approach than Normal mode.
	- VSCodeVim has support for only a very limited number of Ex commands but they can be greatly enhanced by integrating VSCodeVim with Neovim
- using the `:edit` command
	- VSCodeVim is configured to use [[0-relative-file-path-vs-absolute-file-path|relative paths]] in relation to the currently opened file & doesn't support TAB completion so it's mostly useful to create new files that co-located or live near the current file you're working on.
- Ex command has a shorthand version `:edit ` same as `:e`
- `:w` save file {but fails if (nothing to save, read only) }
- `:q` quit file {but fails if (changes made)}
- we can solve the above 2 commands using a more shouting pitch
	- `:write!` same as `:w!` just save no matter what (force save)
	- `:q!` quit no save (force quit)
- apply them to all the opened files at once
	- `:wa!` force save all files
	- `:qa!` force quit all (no save)
	- `:wqa` save and close all #shortcuts/better 
- DELETING MULTIPLE LINES AT ONCE
	- using `:[range]d [register]` register is "optional"
		- same as with (offset) `:10,+2d a`
		- same as with (current line) `:.,+2d a` {-ve allowed}
		- (whole file) `:%d`
		- (start of file) `:0,+10d` > delete first 10 lines in file
		- (end of file) `:.,$d` > delete from current till end of file
		- (current visual text selection) `:'<,'>d` > automatically shows after selecting in visual mode then `:`
- repeat Ex commands
	- `@:` will repeat the last ex command, from then on you can repeat it again with `@@` #shortcuts/better 
- search and substitute text and [[0-regex-or-regular-expressions-MOC|regex]]
	- `:[range]s/{pattern}/{substitute}/{flags}`
	- In addition to the g flag we can use 
		- `i` case {insensitive} searches
# ch14 SPLITS, TABS AND SWITCHING BETWEEN THEM
- `:sp {relative-path-to-file}` command to open a file in a horizontal split.
	- `:vsp {relative-path-to-file}` vertical
- Alternatively
	- `<CTRL-W> S` Window Split
		- `<CTRL-W> V` vertical
- `CTRL-P` on Windows/Linux to {open a new file in that split} 
- move ?
	- move between splits using with `CTRL-W + hjkl`
- you can open several tabs within a split
	- `:tabnew {file}` to open a file in a new tab
	- `:tabn` next
	- `:tabp` previous
	- `:tabo` close all other tabs
- lots of typing .. customize them .. later #still/vim
# ch15 SURROUNDING THINGS WITH VIM SURROUND
- first built-in plugin we see in vim would be `vim-surround`
- `ds'` >delete the surrounding ' {not the thing in between}
- `cs'"` > change the surrounding ' for " `cs{old}{new}` #shortcuts/better 
- `ysaptli` > surround a paragraph with an `<li> tag` `ys{motion}{char}` #shortcuts/better 
	- of course `.` to repeat
	- try `ysap"`, `ysap<`
- selecting a bit of text in {`visual mode`}{not by mouse selection} and then using `S{desired character}` will surround text selection with the desired character 

# ch16 ELEVATING YOUR WORKFLOW WITH CUSTOM MAPPINGS
- type vim in settings
	- then normal/visual/insert mode
- as a rule of thumb.. better make your custom keys combined with the `leader key` in vim
	- vim default leader is `\`
	- I change it to `<Space>`
		- `"vim.leader": "<Space>",` #shortcuts/changed 
---

```
{
  "vim.normalModeKeyBindingsNonRecursive": [
    {
      "before": ["<C-h>"],
      "after": ["<C-w>", "h"]
    },
    {
      "before": ["<C-j>"],
      "after": ["<C-w>", "j"]
    },
    {
      "before": ["<C-k>"],
      "after": ["<C-w>", "k"]
    },
    {
      "before": ["<C-l>"],
      "after": ["<C-w>", "l"]
    }]
}
```
- `ctrl hjkl` for splits focus instead of `ctrl w hjkl` #shortcuts/changed 
	- but make `ctrl h` which was for replace as `leader h` #shortcuts/changed #still
---

```
// notice the differnce
{
  "vim.normalModeKeyBindingsNonRecursive": [
    {
      "before": ["<Leader>", "t", "t"], "commands": [":tabnew"]
    },
    {
      "before": ["<Leader>", "t", "n"], "commands": [":tabnext"]
    },
    {
      "before": ["<Leader>", "t", "p"], "commands": [":tabprev"]
    },
    {
      "before": ["<Leader>", "t", "o"], "commands": [":tabo"]
    }]
}
```

- `leader tt tn tp to` > for `:tabnew` , `:tabnext`, `:tabprev`, `:tabo` #shortcuts/changed 

---
```
{
"vim.normalModeKeyBindingsNonRecursive": [
{
  "before": ["leader", "w"], "commands": [ "workbench.action.files.save" ]
}
}
```
to save file `leader w` .. to know the full command name.. find it in shortcuts page Or by search in settings

- disable vim and back to vscode for these #shortcuts/vim/disabled be go back to vscode defaults
	- [x] `ctrl p` open file
	- [x] `ctrl t` go to symbol in workspace
	- [x] `ctrl shift o` go to symbol in file
		- gave me headache till I found it conflicted with my `Radeon Software app `.. disabling makes it work in vscode
	- [x] `ctrl b` toggle side bar

- `ctrl w` left for vim > `leader w` close window #shortcuts/changed 
# ch17 MOVING EVEN FASTER WITH VIM SURROUND AND EASYMOTION
- cursor flying
- Both of these plugins need to be enabled via your VSCodeVim settings. To enable them, just go to Preferences, Settings search for `vim sneak` or `vim easymotion` and you'll find the switch.
- `vim-sneak` very basic 
	- sneaks double chars `s{char1}{char2}`
	- `sse` cursor flies to first {se} after
		- `;` next  `,` previous #shortcuts/better 
	- `Sre` cursor flies to first {re} before
		- `;` next  `,` previous #shortcuts/better 
	- sneak works with operations but s become z `{operator}z{char}{char}`
		- not to conflict with `vim-surround`
- `vim-easymotion` more advanced
	- it's like that functionality in `vimium` web extension when pressing `f` .. no counting .. just press the reference you see
	- trigger with `leader leader filter` filter can be
		- `s{char}` > search char both ways #shortcuts/better 
		- `w` > start of words after
		- `b` > start of words before
		- `bdw` > start of words both ways #shortcuts/vim/vscode/do_not_work
			- `bd means bi-directional` 
		- `e` > end of words after
		- `ge` > end of words before
		- `bde` > end of words both ways #shortcuts/vim/vscode/do_not_work   
		- `j` > start of lines after
		- `k` > start of lines before
		- `f{char}` > find char after
		- `F{char}` > find char before
		- `f{char}` > find char after
		- `t{char}` > till char after
		- `T{char}` > till char before

# ch18 MULTIPLE CURSORS
- either you stand on the word or just search it `/yourWord`
	- `gb` > add another cursor. This puts Vim into Visual mode 
		- repeat till you've finished adding cursor
	- `esc` back to normal mode
	- do whatever on the words selected
- ADD MULTIPLE CURSORS ON CONSECUTIVE LINES
	- just visual-block mode `ctrl v`
surround every line with `<li>`
```
towel
wrench
shotgun
axe
rusty broadsword
sausage
chain-saw
```

# ch19 REUSABLE EDITING WITH MACROS

- Some more advanced features of macros like editing existing macros or saving macros as custom mappings is either impossible or very inconvenient in VSCodeVim.
- to use macros
	- `q{register}` record strokes on register
	- do some action
	- `q` to end recording
	- `@{register}` run macro
		- `@@` to run again
---

```txt
rusty sword,ruby dagger,silver poniard,broadsword
```
- to make each inside `<li>` .. do the following
- first add {,} to end of line .. `A, esc` later you'll get it
- `qq` record on register q #shortcuts/better 
- `f,`
- `cw enter esc k` delete {,} make newline back to normal mode and go up
- `I<li> esc` add opening tag
- `A</li> esc` closing tag
- `j0` start of next line
- `q` end recording
- `3@q` run macro 3 times
	- or just `@@` run again one by one
	- vim macros can contain split/window swapping

# ch20 ENHANCED FILE EXPLORER, PANES AND PALETTES
- either use `ctrl shift e` or `ctrl w hORl` according to where your side bar is .. just to trigger the side bar
	- `j k` down up
	- `l` open file
	- `h l` on folders for toggle {expand/collapse} or just use `l`
- never forget the build-in vscode shortcuts
	- `ctrl p` > go to file
	- `ctrl shift p` > command palette
	- `ctrl shift o` > go to symbol in file 
	- `ctrl t` > go to symbol in workspace 
	- on using all of them .. just `tab` then use `j k` to move `enter` to select

# ch21 INTEGRATING VSCODE WITH NEOVIM
- a bit hard right now for me to integrate Neovim into vscode
- `:,+3m $` move/cut this line and 3more below to end of line
	- `:,+3m +10` #still
	- `t` to copy instead of `m`

# ch22 SOME HANDY VSCODE ONLY KEY MAPPINGS
- `vaf` > enters visual mode then selects larger blocks of text {helpful sometimes}

# ch26 BONUS 1: THE ENTIRE AND ARGUMENTS TEXT OBJECTS
- entire text object
	- `{operator}ae` that represents the whole content of a buffer 
		- { `a`ll `e`ntire buffer }
	- `{operator}ie` that represents the whole content of the buffer without the surrounding whitespace 
		- { `i`nside `e`ntire buffer }
	- `dae` delete whole page
	- `yie` copy whole page {not surrounding whitespaces}
	- =ae format whole page
	- >ae indent whole page
- arguments text object
	- `{operator}aa` that represents arguments with separator after
	- `{operator}ia` that represents arguments not separator
	- `daa` delete argument with separator after
	- `cia` change argument but not the separator after

