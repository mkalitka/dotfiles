return {
  -- Add Avante
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    version = false,
    build = "make",
    opts = {},
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "stevearc/dressing.nvim",
      "hrsh7th/nvim-cmp",
      --- The below dependencies are optional
      "ibhagwan/fzf-lua", -- for file_selector provider fzf
      "echasnovski/mini.icons", -- for icons
      {
        "zbirenbaum/copilot.lua", -- for llm provider copilot
        opts = {
          filetypes = {
            yaml = true,
          },
        },
      },
      {
        "MeanderingProgrammer/render-markdown.nvim",
        opts = {
          file_types = { "markdown", "Avante" },
        },
        ft = { "markdown", "Avante" },
      },
    },
  },

  -- Configure Blink to use Avante source
  {
    "saghen/blink.cmp",
    event = "VeryLazy",
    dependencies = {
      "Kaiser-Yang/blink-cmp-avante",
    },
    opts = {
      sources = {
        default = { "avante" },
        providers = {
          avante = {
            module = "blink-cmp-avante",
            name = "Avante",
            opts = {
              -- options for blink-cmp-avante
            },
          },
        },
      },
    },
  },
}
