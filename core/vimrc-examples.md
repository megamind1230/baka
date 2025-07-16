#1 
[GitHub - abdalrahmanshaban0/Vim-for-CP: My vim configuration to write and run C/C++ code for competitive programming or any thing similar.](https://github.com/abdalrahmanshaban0/Vim-for-CP)



# .vimrc general template
```lua
set mouse   =a
syntax on
set number
"set relativenumber
set cursorline
:highlight Cursorline cterm=bold ctermbg=black
set hlsearch "#quest is it default in nvim ?

set ignorecase
set smarcase

"these need some acute search #quest"
set tabstop =4  "width of tab char"
set softtabstop =4 "fine tunes the amount of whitespace added"
set shiftwidth =4 "defines amount of whitespace in normal mode"
set textwidth =79 "text wrap width"
set expandtab "ON > space instead of tab
set smarttab "?F"
set autoindent

set showmatch "matching brackets"

"auto command
"remove trailing spaces from .py files"
autocmd BufWritePre *.py :%s/\s\+$//e "idk if this is right #quest "

"colors"
if !has('gui_running')
   set t_Co=256
endif
set termguicolors
colorscheme desert
```


#quest

# .vimrc
found in Linux, MacOS file systems {but no on windows}
to save your own configuration / settings of vim
go to `~/.vimrc` and add these
```c
set nocompatible
filetype indent plugin on
set autoindent

colorscheme desert
syntax on
set wildmenu
set mouse=a

set number
set relativenumber

set tabstop=4
set shiftwidth=4
set expandtab=4 // meaning? #how-to-use
set smarttab // meaning? #how-to-use

set ignorecase
set smartcase


```


# vimrc for cp-ps

#quest
```
autocmd BufNewFile *.cpp 0r /path/to/cpp_template
autocmd filetype cpp nnoremap <F9> :w <bar> !clear && g++ % -o %:r.exe<CR> #quest
autocmd filetype cpp nnoremap <F10> :!./%:r.exe<CR>
```