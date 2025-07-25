return {

  filetypes = { "tex", "plaintex", "bib" },

  cmd = { "texlab" },

  root_markers = { ".git", "main.tex" },

  on_attach = function(client, buffer)

    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = buffer,
      callback = function()
        vim.lsp.buf.format({ buffer = buffer, id = client.id })
      end,
    })

  end,

  settings = {

    texlab = {

      bibtexFormatter = "texlab",

      build = {
        onSave = false,
        onType = false,
      },

      diagnosticDelay = 100,
      formatterLineLength = 80,

      forwardSearch = {
        args = {},
      },

    }

  },

  single_file_support = true,

}
