return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      html = {},
      cssls = {},
      vtsls = { enabled = false },
      biome = { enabled = true, config = { tools = { linter = { enabled = true } } } },
    },
  },
}
