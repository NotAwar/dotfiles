return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = "require("lspconfig")"
      lspconfig.lua_ls.setup({})
      lspconfig.pyright.setup({})
      end,
  },
  {
    "mason-org/mason.nvim",
    opts = {}
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
     config = function()
       require("mason").setup()
     end,
    },
  },

}

