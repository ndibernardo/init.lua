return {
  "ellisonleao/gruvbox.nvim",
  name = "gruvbox",
  config = function()
    require("gruvbox").setup({
      terminal_colors = true,
      contrast = "hard",
      palette_overrides = {
        dark0_hard = "#0C1113",
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
