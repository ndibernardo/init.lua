return {
  {
    "tpope/vim-sleuth"
  },
  {
    "stevearc/conform.nvim",
    config = function ()
      require("conform").setup({
        formatters_by_ft = {}
      })
    end
  },
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup()
    end
  },
  {
    "numToStr/Comment.nvim", opts = {}
  },
}
