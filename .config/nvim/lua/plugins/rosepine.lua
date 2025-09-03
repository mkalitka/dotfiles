return {
  -- Add Rose Pine theme
  {
    "rose-pine/neovim",
    event = "VeryLazy",
    name = "rose-pine",
    opts = {
      variant = "main",
      styles = {
        transparency = true,
      }
    },
  },

  -- Configure LazyVim to use Rose Pine theme
  {
    "LazyVim/LazyVim",
    event = "VeryLazy",
    opts = {
      colorscheme = "rose-pine",
    },
  },
}
