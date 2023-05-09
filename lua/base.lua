vim.cmd('autocmd!')
vim.scriptencoding = 'utf-8'

vim.opt.number = true --行番号
vim.opt.tabstop = 2 --タブのスペース数
vim.opt.shiftwidth = 2 --自動インデントのスペース数
vim.opt.expandtab = true
vim.opt.cursorline = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.shell = 'zsh'
vim.opt.backupdir = os.getenv('HOME') .. '/.vim/backup'
vim.opt.mouse = 'a'

vim.cmd [[syntax enable]]
if vim.fn.exists('+termguicolors') == 1 then
  vim.opt.termguicolors = true
end
vim.opt.background = 'dark'
vim.api.nvim_command [[colorscheme iceberg]]
