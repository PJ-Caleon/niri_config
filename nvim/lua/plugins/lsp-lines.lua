return {
  "Maan2003/lsp_lines.nvim",
  config = function()
    require("lsp_lines").setup()

    -- Disable default inline virtual text to prevent duplicate error messages
    vim.diagnostic.config({
      virtual_text = false,
      virtual_lines = true,
    })

    -- Map <leader>ul to toggle lsp_lines on and off
    vim.keymap.set("", "<leader>ul", function()
      local new_value = not vim.diagnostic.config().virtual_lines
      vim.diagnostic.config({ virtual_lines = new_value })
    end, { desc = "Toggle lsp_lines Diagnostic" })
  end,
}
