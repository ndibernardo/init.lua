return {
  {
    "Olical/conjure",
    ft = { "clojure", "fennel", "python" },
    lazy = true,
    init = function()
      vim.g["conjure#debug"] = true
    end,
    dependencies = {
      "PaterJason/cmp-conjure",
      "tpope/vim-dispatch",
      "clojure-vim/vim-jack-in",
      "radenling/vim-dispatch-neovim"
    },
  },
  {
    "PaterJason/cmp-conjure",
    lazy = true,
    config = function()
      local cmp = require("cmp")
      local config = cmp.get_config()
      table.insert(config.sources, { name = "conjure" })
      return cmp.setup(config)
    end,
  }
}
