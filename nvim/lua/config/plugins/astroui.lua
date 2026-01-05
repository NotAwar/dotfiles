return {
  {
    "AstroNvim/astroui",
    ---@type AstroUIOpts
    opts = {
      colorscheme = "rose-pine",
    },
    {
      "rose-pine/neovim",
      init = function() vim.cmd "colorscheme rose-pine" end,
    },
  },
}
