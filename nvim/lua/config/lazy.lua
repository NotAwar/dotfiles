-- ~/.config/nvim/lua/config/lazy.lua

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "--branch=stable",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Set <leader> before plugins load
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Load plugins
require("lazy").setup({
  spec = {
    { import = "plugins" },         -- Imports all plugin spec files
  },
  defaults = {
    lazy = true,                    -- All plugins lazy by default unless explicitly stated
  },
  install = {
    colorscheme = { "rose-pine" },  -- Set your preferred default
  },
  checker = {
    enabled = true,                 -- Auto-check for plugin updates
  },
  performance = {
    rtp = {
      disabled_plugins = {
        "gzip",
        "matchit",
        "matchparen",
        "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})

