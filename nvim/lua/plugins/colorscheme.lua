return {
  -- 1. Configure Rosé Pine to disable its solid background
  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {
      disable_background = true, -- Makes the background transparent!
      disable_float_background = true, -- Optional: keeps floating windows transparent too
      -- Custom syntax
      highlight_groups = {
        ["@keyword"] = { fg = "#eb6f92" },

        ["@keyword.function"] = { fg = "#eb6f92" },
        ["@keyword.return"] = { fg = "#ebbcba" },

        ["@function"] = { fg = "#ebbcba" },

        ["@function.method"] = { fg = "#ebbcba" },
        ["@function.method.call"] = { fg = "#e0def4" },

        -- Standard vim fallback
        Keyword = { fg = "#9ccfd8" },
        Statement = { fg = "#9ccfd8" },
        Function = { fg = "#eb6f92" },
      },
    },
  },

  -- 2. Tell LazyVim to load rose-pine
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine",
    },
  },
}
