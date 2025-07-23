> adding more functionalities on the built-in vim of obsidian
>  btw i put it in `.obsidian/.obsidian.vimrc`

- [ ] [[obsidian-plugin-{vimrc-support}-issues]]

- [Keshav13142’s gists](https://gist.github.com/Keshav13142)
	- the goat of my vimrc support script ...  i love this guy
# my simple .obsidian.vimrc

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
nmap <F9> :nohl<CR>

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
map s[ :surround_square_brackets<CR>
map s[ :surround_square_brackets<CR>
map s{ :surround_curly_brackets<CR>
map s} :surround_curly_brackets<CR>
map s" :surround_double_quotes<CR>
map s' :surround_single_quotes<CR>
map s` :surround_backticks<CR>
map st :surround_backticks<CR>
map sb :surround_brackets<CR>
map s( :surround_brackets<CR>
map s) :surround_brackets<CR>
map sp :surround_powerful<CR>
map sh :surround_highlight<CR>
map s= :surround_highlight<CR>

" pasteinto as space p {good with hyperlinks}.. i guess the function is implemented inside main.js of vimrc support plugin .. no? 
" remember this >> never forget to unbind space
" does this 
" [](the_url_in_ur_clipboard)
unmap <Space>
map <Space>p :pasteinto<CR>

" we all know that the built-in vim in obsidian is limited
" so some features would not exist
" but we can still map/link to some corresponding obsidian ones.. as follows
	" like folds
exmap togglefold obcommand editor:toggle-fold
nmap zo :togglefold<CR>
nmap zc :togglefold<CR>
nmap za :togglefold<CR>

exmap unfoldall obcommand editor:unfold-all
nmap zR :unfoldall<CR>

exmap foldall obcommand editor:fold-all
nmap zM :foldall<CR>

" escape normal mode with jk AS Esc
imap jk <Esc>


" j AND k navigate visual lines rather than logical ones {both n&v modes}
" useless ig
nmap <Space>j gj
nmap <Space>k gk
vmap <Space>j gj
vmap <Space>k gk

" cycle between tabs {left/right} {both n&v modes}
exmap tableft obcommand workspace:previous-tab
exmap tabright obcommand workspace:next-tab
nmap gt :tabright<CR>
nmap gT :tableft<CR>
vmap gt :tabright<CR>
vmap gT :tableft<CR>
" make splits {both n&v modes}
exmap vertsplit obcommand workspace:split-vertical
exmap horisplit obcommand workspace:split-horizontal
nmap <Space>v :vertsplit<CR>
nmap <Space>V :horisplit<CR>
vmap <Space>v :vertsplit<CR>
vmap <Space>V :horisplit<CR>

" integrating gx,gf,gd for vim {my way.. ok}
exmap followBothLinksAndNotes obcommand editor:follow-link
exmap openDefinitionSplit obcommand editor:open-link-in-new-split
exmap openNoteInNewTab obcommand editor:open-link-in-new-leaf
nmap gx :followBothLinksAndNotes<CR>
nmap gf :followBothLinksAndNotes<CR>
nmap gd :openDefinitionSplit<CR>
nmap gn :openNoteInNewTab<CR>

" zen mode {zen plugin by maximillion }
exmap zen obcommand zen:toggle
nmap <Space>z :zen<CR>

" command palette
exmap cmd obcommand command-palette:open
nmap <Space>cp :cmd<CR>

" filesearch
exmap fuzzyfind obcommand switcher:open
nmap <Space>ff :fuzzyfind<CR><CR>
nmap <Space>pv :fuzzyfind<CR><CR>

" Close/restore current tab
exmap closetab obcommand workspace:close
exmap undoClosetab obcommand workspace:undo-close-pane
nmap <Space>x :closetab<CR>
nmap <Space>X :undoClosetab<CR>
 
" close obsidian itself {the whole app}
exmap obclose obcommand workspace:close-window
nmap <Space>`` :obclose<CR>


" Focus on global search input
exmap globalsearch obcommand global-search:open
nmap <Space>gs :globalsearch<CR>

" move/swap 1 line up/down {n&v&i modes}
exmap lineUp obcommand editor:swap-line-up
exmap lineDown obcommand editor:swap-line-down
nmap <A-d> :lineDown<CR>
nmap <A-f> :lineUp<CR>
vmap <A-d> :lineDown<CR>
vmap <A-f> :lineUp<CR>
imap <A-d> :lineDown<CR>
imap <A-f> :lineUp<CR>

" focus/navigate splits .. not that important for me i guess
exmap focusUp obcommand editor:focus-top
exmap focusDown obcommand editor:focus-bottom
exmap focusLeft obcommand editor:focus-left
exmap focusRight obcommand editor:focus-right
nmap <A-h> :focusLeft<CR>
nmap <A-j> :focusDown<CR>
nmap <A-k> :focusUp<CR>
nmap <A-l> :focusRight<CR>

" strong select (custom)
nmap <Space>ll $v0f<Space>l
" ##separator~~~lol~~~all above works fine##
map <Space>c5 i1<CR>2<CR>3<CR>4<CR>5<Esc>v4k
map <Space>c6 i1<CR>2<CR>3<CR>4<CR>5<CR>6<Esc>v5k



```

