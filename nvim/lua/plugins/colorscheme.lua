return {
  -- 1. Configure Rosé Pine to disable its solid background
  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {
      disable_background = true, -- Makes the background transparent!
      disable_float_background = true, -- Optional: keeps floating windows transparent too
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
