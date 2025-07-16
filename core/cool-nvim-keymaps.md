```lua
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- incr /decr
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- delete word backwards .. dont save it
keymap.set("n", "<leader>dw", 'viw"_d')
-- select all {highlight}
keymap.set('n', '<leader>sa', 'ggVG')


-- new tab + nav
keymap.set('n', 'te', ':tabedit', opts)
keymap.set('n', '<tab>', ':tabnext<Return>', opts)
keymap.set('n', '<s-tab>', ':tabprev<Return>', opts)

-- splits + nav + resize
keymap.set('n', 'ss', ':split<Return>', opts)
keymap.set('n', 'sv', ':vsplit<Return>', opts)

keymap.set('n', 'sh', '<C-w>h')
keymap.set('n', 'sj', '<C-w>j')
keymap.set('n', 'sk', '<C-w>k')
keymap.set('n', 'sl', '<C-w>l')

keymap.set('n', '<C-w><left>', '<C-w><') -- must allow arros keys
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

-- switch between current&prev files
keymap.set('n', '%', '<C-^>')
```