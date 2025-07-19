--[[
Read the docs: https://www.lunarvim.org/docs/configuration
Example configs: https://github.com/LunarVim/starter.lvim
Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
Forum: https://www.reddit.com/r/lunarvim/
Discord: https://discord.com/invite/Xb9B4Ny
--]]

-- some options
vim.opt.relativenumber = true
-- INFO:: anything with info is my custom
-- jk as esc
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', {})
-- H as g^
vim.api.nvim_set_keymap('n', 'H', 'g^', {})
vim.api.nvim_set_keymap('v', 'H', 'g^', {})
vim.api.nvim_set_keymap('x', 'H', 'g^', {})
-- l as g$
vim.api.nvim_set_keymap('n', 'L', 'g$', {})
vim.api.nvim_set_keymap('v', 'L', 'g$', {})
vim.api.nvim_set_keymap('x', 'L', 'g$', {})
-- ZX as ZQ
vim.api.nvim_set_keymap('x', 'ZX', 'ZQ', {})
vim.api.nvim_set_keymap('v', 'ZX', 'ZQ', {})
vim.api.nvim_set_keymap('n', 'ZX', 'ZQ', {})

-- python IDE
lvim.builtin.treesitter.ensure_installed = {
  "python",
}

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup{ { name = "black"} }

local linters = require "lvim.lsp.null-ls.linters"
linters.setup { {command = "flake8", args = {"--ignore=E203"}, filetypes = {"python"} } }

lvim.plugins = {
  "stevearc/dressing.nvim",
}

-- end

