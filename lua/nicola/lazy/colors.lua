
return {
  {
    "pappasam/papercolor-theme-slim",
    config = function ()
      vim.cmd [[
        autocmd ColorScheme PaperColorSlim,PaperColorSlimLight highlight Normal guibg=NONE
        colorscheme PaperColorSlimLight
      ]]
    end
  }
}
