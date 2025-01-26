return {
  'stevearc/oil.nvim',
  opts = {},
  dependencies = { "echasnovski/mini.icons" },
  config = function()
    require("oil").setup({
      default_file_explorer = true,
      delete_to_trash = true,
      columns = {},
      view_options = {
        show_hidden = true,
      },
    })
  end
}
