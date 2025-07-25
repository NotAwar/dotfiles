return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      size = 20,
      direction = "horizontal",
      shell = "/opt/homebrew/bin/fish", -- or use `which fish`
      open_mapping = [[<C-t>]], -- change from <C-\> to <C-t>
      start_in_insert = true,
      persist_size = true,
      close_on_exit = true,
      shade_terminals = true,
    },
  },
}
