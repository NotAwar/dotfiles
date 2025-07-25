
local opts = {}

opts.keymaps = {

  terminal = "<leader>t",
  find_file = "<leader>ff",
  find_buffer = "<leader>y",
  live_grep = "<leader>ga",
  live_current_grep = "<leader>gg",

  normal_mode = "<C-u>",

  goto_file = "gf",

  lazygit = "<leader>l",

}

opts.window = {

  width = function() return math.floor(vim.o.columns * 0.8) end,
  height = function() return math.floor(vim.o.lines * 0.8) end,

  style = "minimal",
  border = "single",

}

opts.fzf = {

  executable = "fzf",

  args = {
    "--multi",
    "--layout=reverse",
    "--header-first",
    "--bind 'ctrl-a:toggle-all'",
  },

}

opts.rg = {

  executable = "rg",

  args = {
    "--vimgrep",
    "--ignore-case",
  },

}

opts.fd = {

  executable = "fd",

  args = {
    "--type f",
    "--full-path",
    "--no-require-git",
    '--exclude "*.png"',
    '--exclude "*.pdf"',
    '--exclude "*.jp*g"',
    '--exclude "*.aux"',
    '--exclude "*.vtu"',
    '--exclude "*.docx"',
    '--exclude "*.xlsx"',
    '--exclude "*.pptx"',
    '--exclude "*.o"',
    '--exclude "*.so"',
    '--exclude "*.bin"',
    '--exclude "*.ipynb"',

    '--exclude "**/*cache*/**"',
    '--exclude "**/build/**"',
  },
}

return {

  "terminal", dev = true,

  event = "UIEnter",
  opts = opts,

}
