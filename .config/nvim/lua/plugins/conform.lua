return {
  {
    "stevearc/conform.nvim",
    opts = function()
      return {
        formatters_by_ft = {
          python = { "isort", "black" },
          lua = { "stylua" },
          fish = { "fish_indent" },
          sh = { "shfmt" },
          rust = { "rustfmt" },
          html = { "prettier" },
          css = { "prettier" },
          scss = { "prettier" },
          javascript = { "prettier" },
          json = { "prettier" },
          yaml = { "prettier" },
          markdown = { "prettier" },
        },
      }
    end,
  },
}
