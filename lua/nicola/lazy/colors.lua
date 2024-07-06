return {
  "ellisonleao/gruvbox.nvim",
  name = "gruvbox",
  config = function()
    require("gruvbox").setup({
      terminal_colors = false,
      contrast = "hard",
      palette_overrides = {
        -- dark0_hard = "#0C1113",
      },
      overrides = {
        ["@punctuation.bracket"] = { fg = "#fe8019" },
        ["@punctuation.delimiter"] = { fg = "#fe8019" },
        ["@punctuation.special"] = { fg = "#fe8019" },
      },
      italic = {
        strings = false,
        emphasis = false,
        comments = false,
        operators = false,
        folds = false,
      },
      bold = false,
    })
    vim.o.background = "dark"
    vim.cmd("colorscheme gruvbox");
  end,
}
