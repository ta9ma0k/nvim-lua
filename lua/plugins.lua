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
  -- lua util
  'nvim-lua/plenary.nvim',
  -- finder
  'nvim-telescope/telescope.nvim',
  'nvim-telescope/telescope-file-browser.nvim',

  -- treesitter
  {
    'nvim-treesitter/nvim-treesitter',
     run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  },
  -- copilot
  'github/copilot.vim',
  -- 背景透過
  'tribela/vim-transparent',
  -- ステータスライン
  'nvim-lualine/lualine.nvim',
  'kyazdani42/nvim-web-devicons',
  -- autopairs
  'windwp/nvim-autopairs',
  'windwp/nvim-ts-autotag',
})
