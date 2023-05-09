local keymap = vim.keymap

-- escape
keymap.set('i', 'jk', '<ESC>', { noremap = true })

-- increment/decrement
keymap.set('n', '+', '<C-a>', { noremap = true })
keymap.set('n', '-', '<C-x>', { noremap = true })

-- tab
keymap.set('n', 'te', ':tabedit')
keymap.set('n', '<Tab>', ':tabnext<CR>')
keymap.set('n', '<S-Tab>', ':tabprev<CR>')

-- window
-- split window
keymap.set('n', 'ss', ':split<CR><C-w>w')
keymap.set('n', 'vs', ':vsplit<CR><C-w>w')
-- move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')
