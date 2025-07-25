return {

  filetypes = { "python" },

  cmd = {"pyright-langserver", "--stdio"},

  root_markers = { ".git", "pyproject.toml" },

  on_init = function(client)
    client.offset_encoding = "utf-8"
  end,

  settings = {

    pyright = {
      disableOrganizeImports = true,
    },

    python = {
      analysis = {
        autoImportCompletions= false,
        autoSeachPaths = false,
        diagnosticMode = "workspace",
        typeCheckingMode = "standard",
        diagnosticSeverityOverrides = {
          reportPrivateImportUsage = "none",
        },
      }
    },

  },

}
