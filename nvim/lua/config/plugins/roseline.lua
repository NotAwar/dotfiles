return {
  {
    "maxmx03/roseline",
    opts = {
      theme = "rose-pine",
      icons = {
        vim = "",
        git = {
          head = "",
          added = "",
          changed = "",
          removed = "",
        },
        diagnostic = {
          Error = "",
          Warning = "",
          Information = "",
          Question = "",
          Hint = "󰌶",
          Debug = "",
          Ok = "󰧱",
        },
        os = {
          Linux = "",
          microsoft = "",
          Darwin = "",
        },
        default = { left = "", right = "" },
        block = { left = "█", right = "█" },
        round = { left = "", right = "" },
      },
    },
    dependencies = {
      "rose-pine/neovim",
    },
  },
}
