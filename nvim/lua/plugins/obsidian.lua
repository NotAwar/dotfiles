return {
  {
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = true,
    ft = "markdown",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      workspaces = {
        {
          name = "vault",
          path = "/Users/awar/Documents/Obsidian Vault",
        },
      },
      completion = {
        nvim_cmp = true,
      },
      disable_frontmatter = false, -- still allows tags, aliases, etc.
      mappings = {}, -- disables built-in note creation mappings
      note_id_func = function(title)
        return tostring(os.time()) -- safe fallback
      end,
      follow_url_func = function(url)
        vim.fn.jobstart({ "open", url }) -- open links in browser
      end,
    },
  },
}

