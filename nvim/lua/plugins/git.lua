return {
  { "lewis6991/gitsigns.nvim", opts = {} },
  { "tpope/vim-fugitive" },
  {
    "kdheepak/lazygit.nvim",
    cmd = "LazyGit",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  {
    "pwntester/octo.nvim",
    cmd = "Octo",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
  },
  -- gitlinker.nvim to open current file on GitHub
  {
    "ruifm/gitlinker.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    config = function()
      require("gitlinker").setup()
    end,
    keys = {
      {
        "<leader>gy",
        function()
          require("gitlinker").get_buf_range_url("n", {
            action_callback = require("gitlinker.actions").open_in_browser,
          })
        end,
        desc = "Open GitHub URL for line in browser",
      },
    },
  },
}
