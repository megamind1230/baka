
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.cmd([[
  set scrolloff=6
  set expandtab
  set tabstop=2
  set softtabstop=2
  set shiftwidth=2
  set nu
  set relativenumber
  set clipboard=unnamedplus
]])

-- some keymaps
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, {}) -- netRW
vim.keymap.set('i', 'jk', '<Esc>', {}) -- jk as Esc 
vim.keymap.set('n', 'ZX', 'ZQ', {}) -- jk as Esc 
vim.keymap.set('n', 'L', 'g$', {}) -- L as g$
vim.keymap.set('n', 'H', 'g^', {}) -- H as g^
vim.keymap.set('v', 'L', 'g$', {}) -- L as g$
vim.keymap.set('v', 'H', 'g^', {}) -- H as g^
vim.keymap.set('n', '<Esc>', ':noh<CR>', {}) -- Esc as :noh
vim.wo.wrap = false

-- Highlight on yank
vim.api.nvim_create_autocmd('TextYankPost', {
    group = vim.api.nvim_create_augroup('highlight_yank', { clear = true }),
    callback = function()
        vim.highlight.on_yank({ 
            higroup = 'IncSearch',
            timeout = 200
        })
    end
})
