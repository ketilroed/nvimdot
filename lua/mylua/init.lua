
require("mylua.set")

-- Setup of lazy.vim package handler
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
vim.opt.rtp:prepend(lazypath)

-- List of plugins to use
local plugins = {
  -- color themes
  { "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...},
  -- telescope
  {
  'nvim-telescope/telescope.nvim', tag = '0.1.5',
-- or                              , branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
--  {
--    "nvim-telescope/telescope-file-browser.nvim",
--    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
--  },
  -- treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  }

}


local opts = {}

-- activate the lazy.vim package handler
require("lazy").setup(plugins, opts)

local builtin = require("telescope.builtin")
vim.keymap.set('n', '<C-p>', builtin.find_files , {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep , {})

-- vim.keymap.set("n", "sf", function()
--   telescope.extensions.file_browser.file_browser({
--   path = "%:p:h",
--   cwd = telescope_buffer_dir(),
--   respect_gitignore = false,
--   hidden = true,
--   grouped = true,
--   previewer = false,
--   initial_mode = "normal",
--   layout_config = { height = 40 }
-- })
-- end)
-- require("telescope").load_extension "file_browser"



local config = require("nvim-treesitter.configs")
config.setup({
  ensure_installed = {"lua","c", "markdown", "vim" }, 
  sync_install = false,
  highlight = {enable = true},
  indent = {enable = true},
})

-- Setup gruvbox colorscheme and make it active.
require("gruvbox").setup()
vim.cmd.colorscheme "gruvbox"

