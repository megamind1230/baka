> adding more functionalities on the built-in vim of obsidian

- [Keshav13142’s gists](https://gist.github.com/Keshav13142)
	- the goat of my vimrc support script
	- i love this guy
- my simple `.obsidian.vimrc`
	- btw i put it in `.obsidian/.obsidian.vimrc`
```c
" (make sure to remove default Obsidian shortcuts if any conflicts happen)
" sometimes we use exmap to make aliases for long commands .. cuz of a bug in
" CodeMirror {it cannot handle many arguements}


" H AND L start/end of line AS ^ AND $ {both n&v modes}
nmap H ^
nmap L $
vmap H ^
vmap L $

" Quickly remove search highlights {nohighlight}
nmap <F9> :nohl

" Yank to system clipboard
set clipboard=unnamed

" gh AND gl AS g^ AND g$  {both n and v mode}
nmap gh g^
nmap gl g$
vmap gh g^
vmap gl g$

" vim-surround
exmap surround_wiki surround [[ ]]
exmap surround_double_quotes surround " "
exmap surround_single_quotes surround ' '
exmap surround_backticks surround ` `
exmap surround_brackets surround ( )
exmap surround_square_brackets surround [ ]
exmap surround_curly_brackets surround { }
exmap surround_powerful surround *** ***
exmap surround_highlight surround == == 

	" NOTE: must use 'map' and not 'nmap'
map [[ :surround_wiki
nunmap s
vunmap s
map s" :surround_double_quotes
map s' :surround_single_quotes
map s` :surround_backticks
map st :surround_backticks
map sb :surround_brackets
map s( :surround_brackets
map s) :surround_brackets
map s[ :surround_square_brackets
map s[ :surround_square_brackets
map s{ :surround_curly_brackets
map s} :surround_curly_brackets
map sp :surround_powerful
map sh :surround_highlight
map s= :surround_highlight

" pasteinto as space p {good with hyperlinks}.. i guess the function is implemented inside main.js of vimrc support plugin .. no? 
" remember this >> never forget to unbind space
unmap <Space>
map <Space>p :pasteinto

" we all know that the built-in vim in obsidian is limited
" so some features would not exist
" but we can still map/link to some corresponding obsidian ones.. as follows
	" like folds
exmap togglefold obcommand editor:toggle-fold
nmap zo :togglefold
nmap zc :togglefold
nmap za :togglefold

exmap unfoldall obcommand editor:unfold-all
nmap zR :unfoldall

exmap foldall obcommand editor:fold-all
nmap zM :foldall

" escape normal mode with jk AS Esc
imap jk <Esc>


" j AND k navigate visual lines rather than logical ones {both n&v modes}
nmap <Space>j gj
nmap <Space>k gk
vmap <Space>j gj
vmap <Space>k gk

" cycle between tabs {left/right} {both n&v modes}
exmap tableft obcommand workspace:previous-tab
exmap tabright obcommand workspace:next-tab
nmap gt :tabright 
nmap gT :tableft 
vmap gt :tabright 
vmap gT :tableft 
" make splits {both n&v modes}
exmap vertsplit obcommand workspace:split-vertical
exmap horisplit obcommand workspace:split-horizontal
nmap <Space>v :vertsplit
nmap <Space>V :horisplit
vmap <Space>v :vertsplit
vmap <Space>V :horisplit

" integrating gx,gf,gd for vim {my way.. ok}
exmap followBothLinksAndNotes obcommand editor:follow-link
exmap openDefinitionSplit obcommand editor:open-link-in-new-split
exmap openNoteInNewTab obcommand editor:open-link-in-new-leaf
nmap gx :followBothLinksAndNotes
nmap gf :followBothLinksAndNotes
nmap gd :openDefinitionSplit
nmap gn :openNoteInNewTab

" zen mode {zen plugin by maximillion }
exmap zen obcommand zen:toggle
nmap <Space>z :zen

" command palette
exmap cmd obcommand command-palette:open
nmap <Space>cp :cmd

" filesearch
exmap fuzzyfind obcommand switcher:open
nmap <Space>ff :fuzzyfind

" Close/restore current tab
exmap closetab obcommand workspace:close
exmap undoClosetab obcommand workspace:undo-close-pane
nmap <Space>x :closetab
nmap <Space>X :undoClosetab
 
" close obsidian itself {the whole window}
exmap obclose obcommand workspace:close-window
nmap <Space>`` :obclose


" Focus on global search input
exmap globalsearch obcommand global-search:open
nmap <Space>gs :globalsearch

" move/swap 1 line up/down {n&v&i modes}
exmap lineUp obcommand editor:swap-line-up
exmap lineDown obcommand editor:swap-line-down
nmap <A-d> :lineDown
nmap <A-f> :lineUp
vmap <A-d> :lineDown
vmap <A-f> :lineUp
imap <A-d> :lineDown
imap <A-f> :lineUp

" focus/navigate splits .. not that important for me i guess
exmap focusUp obcommand editor:focus-top
exmap focusDown obcommand editor:focus-bottom
exmap focusLeft obcommand editor:focus-left
exmap focusRight obcommand editor:focus-right
nmap <A-h> :focusLeft
nmap <A-j> :focusDown
nmap <A-k> :focusUp
nmap <A-l> :focusRight

" strong select (custom)
nmap <Space>ll $v0f<Space>l
" ##separator~~~lol~~~all above works fine##

```

# not done
- [ ]  ctrl n/p search
	- [ ] [[Win/Linux]: Support Ctrl+N/P for navigating items in dropdowns - Feature requests - Obsidian Forum](https://forum.obsidian.md/t/win-linux-support-ctrl-n-p-for-navigating-items-in-dropdowns/6788/17)
	- [ ] [Ctrl-J / Ctrl-K Hotkey for navigation within command palette and quick switcher - Feature requests - Obsidian Forum](https://forum.obsidian.md/t/ctrl-j-ctrl-k-hotkey-for-navigation-within-command-palette-and-quick-switcher/7751/13)
	- [ ] [darlal/obsidian-switcher-plus: Enhanced Quick Switcher plugin for Obsidian.md](https://github.com/darlal/obsidian-switcher-plus)

 - [ ] but there are some little things that i like to add to this config
	- [ ] how to make `gf` open files {follow up the wiki links `[[]]`}
	- [ ] how to switch tabs with for example `gt` and `gT`
# done
- [x] gf
	- [x] aka follow link
	- [x] gx
		- [x] open url ?
- [x] cycle between tabs {left/right}
- [x] start/end of line ez  {`space h/l`}
- [x] move line up and down with {`alt d/u`} 
- [x] zen mode > `space z`
- [x] create splits > `space v/V`
	- [x] focus/nav splits with alt hjkl
- [x] pasteinto > `space p` {not alt p}
- [x] quite close tab > `space x`
	- [x] undo `space X`
- [x] focus on global search input > `space gs`
	- same as `ctrls shift f`
- [x] is switcher:open same as `ctrl q` > ok try add also space ff {fuzzyfind}
- [x] add command palette > `space cp`
- [x] close all obsidian ?
	- `space `` `