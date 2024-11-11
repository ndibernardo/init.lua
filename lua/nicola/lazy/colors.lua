return {
  {
    'aktersnurra/no-clown-fiesta.nvim',
    config = function()
      -- vim.cmd [[colorscheme no-clown-fiesta]]
    end
  },
  {
    "miikanissi/modus-themes.nvim",
    priority = 1000,
    config = function()
      vim.cmd [[colorscheme modus_operandi]]
    end
  }
}
