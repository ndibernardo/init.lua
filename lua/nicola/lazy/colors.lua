return {
  "ellisonleao/gruvbox.nvim",
  config = function()
    require("gruvbox").setup({
      terminal_colors = true,
      undercurl = true,
      underline = true,
      bold = true,
      italic = {
        strings = false,
        emphasis = false,
        comments = false,
        operators = false,
        folds = false,
      },
      strikethrough = true,
      invert_selection = false,
      invert_signs = false,
      invert_tabline = false,
      invert_intend_guides = false,
      inverse = false,
      contrast = "hard",
      palette_overrides = {},
      overrides = {
        ["Delimiter"] = { link = "GruvboxGray" },
        ["@punctuation.delimiter"] = { link = "GruvboxGray" },
        ["@punctuation.bracket"] = { link = "GruvboxGray" },
        ["@punctuation.special"] = { link = "GruvboxGray" },
        ["@constructor"] = { link = "GruvboxGray" },
        ["@property"] = { link = "Normal" },
        ["@function.builtin"] = { link = "GruvboxRed" },
        ["@keyword.import"] = { link = "GruvboxRed" },
        ["@variable.builtin"] = { link = "GruvboxBlue" },
        ["Operator"] = { link = "GruvboxBlue" },
      },
      dim_inactive = false,
      transparent_mode = false,
    })
    vim.o.background = "dark"
    vim.cmd([[colorscheme gruvbox]])
  end
}
