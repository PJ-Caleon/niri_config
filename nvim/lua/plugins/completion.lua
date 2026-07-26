return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "super-tab",

      -- Tab accepts the currently highlighted item if menu is visible,
      -- otherwise it indents normally
      ["<Tab>"] = { "select_and_accept", "fallback" },
    },
  },
}
