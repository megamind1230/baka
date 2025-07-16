#1 
@ `~/.config/nvim/init.lua`
# wants and needs
- [x] best plugin manager for neovim
	- [x] lazy.nvim is the best plugin manager
	- [x] meanwhile lazy.vim is a vim distro
- [ ] autopair brackets
- [ ] command to compile current file
- [ ] cpp
	- [ ] cpp syntax highlighting 
	- [ ] cpp code completion
	- [ ] cpp code snippet
- [ ] view files {nerdtree?}
- [ ] fzf or telescope
# no plugins + work
```lua
--basic things
vim.wo.relativenumber = true -- relativenumber 
vim.o.tabstop = 3 -- Number of spaces a tab represents
vim.o.shiftwidth = 3 -- Number of spaces for each indentation
vim.o.expandtab = true -- Convert tabs to spaces
vim.o.smartindent = true -- Automatically indent new lines
vim.o.wrap = true -- Disable line wrapping
-- vim.o.cursorline = true -- Highlight the current line

-- Syntax highlighting and filetype plugins
vim.cmd('syntax enable')
vim.cmd('filetype plugin indent on')
vim.g.mapleader = ' ' -- Space as the leader key

-- {leader w}=save
-- vim.api.nvim_set_keymap('n', '<Leader>w', ':w<CR>', { noremap = true, silent = true }) --idk why this doesnt work?
vim.api.nvim_set_keymap('n', '<Leader>w', '<C-s>', { noremap = true, silent = true })


vim.opt.clipboard = "unnamedplus" -- use system clipboard
vim.opt.mouse="a" --enable mouse

--{jk}=esc
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = true }) -- caps as esc.. can be done from kde settings

-- {leader a}=yank all file
vim.api.nvim_set_keymap('n', '<leader>a', ':%y<CR>', { noremap = true })

-- disable arrow keys
vim.api.nvim_set_keymap('n', '<Left>', '', { noremap = true })
vim.api.nvim_set_keymap('n', '<Right>', '', { noremap = true })
vim.api.nvim_set_keymap('n', '<Up>', '', { noremap = true })
vim.api.nvim_set_keymap('n', '<Down>', '', { noremap = true })

```


# other