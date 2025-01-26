return {
  {
    'chriskempson/base16-vim',
    config = function()
      vim.hl = vim.highlight
      vim.cmd [[
         function! Base16Customize()
            call g:Base16hi("Identifier",               g:base16_gui05, "", g:base16_cterm05, "", "none", "")
            call g:Base16hi("Statement",                g:base16_gui05, "", g:base16_cterm05, "", "", "")
            call g:Base16hi("Delimiter",                g:base16_gui03, "", g:base16_cterm03, "", "", "")
            call g:Base16hi("Type",                     g:base16_gui0D, "", g:base16_cterm03, "", "", "")

            " GitSigns
            call g:Base16hi("GitSignsAdd",              g:base16_gui0B, "", g:base16_cterm0B, "", "", "")
            call g:Base16hi("GitSignsChange",           g:base16_gui0E, "", g:base16_cterm0E, "", "", "")
            call g:Base16hi("GitSignsDelete",           g:base16_gui08, "", g:base16_cterm08, "", "", "")

            " Diagnostics
            call g:Base16hi("DiagnosticError",          g:base16_gui08, "", g:base16_cterm08, "", "", "")
            call g:Base16hi("DiagnosticWarn",           g:base16_gui09, "", g:base16_cterm09, "", "", "")
            call g:Base16hi("DiagnosticInfo",           g:base16_gui0C, "", g:base16_cterm0C, "", "", "")
            call g:Base16hi("DiagnosticHint",           g:base16_gui0B, "", g:base16_cterm0B, "", "", "")

            " Diagnostic Underline
            call g:Base16hi("DiagnosticUnderlineError", g:base16_gui08, "", g:base16_cterm08, "", "undercurl", "")
            call g:Base16hi("DiagnosticUnderlineWarn",  g:base16_gui09, "", g:base16_cterm09, "", "undercurl", "")
            call g:Base16hi("DiagnosticUnderlineInfo",  g:base16_gui0C, "", g:base16_cterm0C, "", "undercurl", "")
            call g:Base16hi("DiagnosticUnderlineHint",  g:base16_gui0B, "", g:base16_cterm0B, "", "undercurl", "")

            " WhichKey
            call g:Base16hi("WhichKeyNormal",           g:base16_gui05, g:base16_gui00, "", "", "", "")
            call g:Base16hi("Float",           g:base16_gui05, g:base16_gui00, "", "", "", "")
            call g:Base16hi("NormalFloat",           g:base16_gui05, g:base16_gui00, "", "", "", "")
         endfunction

         augroup base16_colorscheme
            au!
            au ColorScheme * call Base16Customize()
         augroup END

         colorscheme base16-tomorrow-night
       ]]
    end
  }
}
