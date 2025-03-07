return {
  -- Add themes plugin
  { "rose-pine/neovim", name = "rose-pine", priority = 1000 },

  -- Configure LazyVim to load the rose-pine colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine",
    },
  },
}
