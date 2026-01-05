return {
  {
    "L3MON4D3/LuaSnip",
    -- the first parameter is the plugin specification
    -- the second is the table of options as set up in Lazy with the `opts` key
    config = function(plugin, opts)
      -- run the core AstroNvim configuration function with the options table
      require "astronvim.plugins.configs.luasnip"(plugin, opts)

      -- require luasnip and use it's API as normal
      require("luasnip").filetype_extend("javascript", { "javascriptreact" })
    end,
  },
}
