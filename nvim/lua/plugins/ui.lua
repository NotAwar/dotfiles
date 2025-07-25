return {
  -- 💅 UI Enhancements
  { "stevearc/dressing.nvim", event = "VeryLazy" },

  -- 🎨 Icons
  { "nvim-tree/nvim-web-devicons", lazy = true },

  -- 🌈 Rose Pine colorscheme
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("rose-pine")
    end,
  },

  -- 📊 Statusline
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup({
        options = {
          theme = "auto",
          section_separators = "",
          component_separators = "",
        },
      })
    end,
  },

  -- 🔍 Telescope fuzzy finder
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    cmd = "Telescope",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      { "<leader>ff", "<cmd>Telescope find_files<CR>", desc = "Find Files" },
      { "<leader>fg", "<cmd>Telescope live_grep<CR>", desc = "Grep in Files" },
      { "<leader>fb", "<cmd>Telescope buffers<CR>", desc = "Find Buffers" },
      { "<leader>fc", "<cmd>Telescope commands<CR>", desc = "Find Commands" },
      { "<leader>fk", "<cmd>Telescope keymaps<CR>", desc = "Find Keymaps" },
      { "<leader>fa", "<cmd>Telescope autocommands<CR>", desc = "Find Autocommands" },
    },
    config = function()
      require("telescope").setup()
    end,
  },

  -- 🗂️ File browser extension for Telescope
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("telescope").load_extension("file_browser")
    end,
    keys = {
      {
        "<leader>fF",
        function()
          require("telescope").extensions.file_browser.file_browser({
            path = vim.fn.expand("%:p:h"),
            respect_gitignore = false,
            hidden = true,
            grouped = true,
            previewer = false,
            initial_mode = "normal",
            layout_config = { height = 40 },
          })
        end,
        desc = "File Browser (cwd)",
      },
    },
  },
}

