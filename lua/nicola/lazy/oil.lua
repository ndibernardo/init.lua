return {
  'stevearc/oil.nvim',
  opts = {},
  dependencies = { "echasnovski/mini.icons" },
  config = function()
    require("oil").setup()
  end
}
