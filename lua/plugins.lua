local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.runtimepath:append(lazypath)

-- Lazy load plugins
local lazy = require("lazy")
lazy.setup({
  -- copilot
  'github/copilot.vim',
  -- 背景透過
  'tribela/vim-transparent',
  -- ステータスライン
  'nvim-lualine/lualine.nvim',
  'kyazdani42/nvim-web-devicons',
  -- autopairs
  'windwp/nvim-autopairs',
  -- treesitterを入れたら有効化
  -- 'windwp/nvim-ts-autotag',
})
