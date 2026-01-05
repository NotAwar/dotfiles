return {
  {
    "NeogitOrg/neogit",
    lazy = true, -- lazy load on module
    dependencies = {
      { -- AstroCore is always loaded on startup, so making it a dependency doesn't matter
        "AstroNvim/astrocore",
        opts = {
          mappings = { -- define a mapping to load the plugin module
            n = {
              ["<Leader>gG"] = function() require("neogit").open() end,
            },
          },
        },
      },
    },
    opts = {}, -- run `require("neogit").setup({})`
  },
  {
    "danymat/neogen",
    cmd = "Neogen", -- lazy load on command
    dependencies = {
      { -- AstroCore is always loaded on startup, so making it a dependency doesn't matter
        "AstroNvim/astrocore",
        opts = {
          mappings = { -- define a mapping to invoke the command
            n = {
              ["<Leader>a"] = function() vim.cmd "Neogen" end,
            },
          },
        },
      },
    },
    opts = {},
  },
}
