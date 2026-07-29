return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      html = {},
      cssls = {},
      vtsls = { enabled = false },
      biome = { enabled = true, config = { tools = { linter = { enabled = true } } } },
      pylsp = {
        settings = {
          pylsp = {
            plugins = {
              pycodestyle = { enabled = false },
              pyflakes = { enabled = true },
              pylint = { enabled = false },
              mccabe = { enabled = false },
              jedi_completion = { enabled = false },
            },
          },
        },
      },
    },
  },
}
