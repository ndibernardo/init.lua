return {
  'chriskempson/base16-vim',
  config = function()
    vim.cmd [[
       function! Base16Customize()
         call g:Base16hi("Identifier",   g:base16_gui05, "", g:base16_cterm05, "", "none", "")
         call g:Base16hi("Statement",    g:base16_gui05, "", g:base16_cterm05, "", "", "")
       endfunction

       augroup base16_colorscheme
          au!
          au ColorScheme * call Base16Customize()
        augroup END
        colorscheme base16-tomorrow-night
     ]]
  end
}
