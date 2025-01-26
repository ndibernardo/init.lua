local colors = {
  bg = '#181818',
  bg_alt = '#383838',
  fg = '#bfc9db',
  keyword = '#3aa982',
  function_name = '#6e8eb8',
  macro = '#e0ad82',
  invalid = '#ff0000',
  comment = '#87919d'
}

return {
  normal = {
    a = { fg = colors.bg, bg = colors.function_name, gui = 'bold' },
    b = { fg = colors.fg, bg = colors.bg_alt },
    c = { fg = colors.fg, bg = colors.bg }
  },
  insert = {
    a = { fg = colors.bg, bg = colors.keyword, gui = 'bold' },
    b = { fg = colors.fg, bg = colors.bg_alt },
    c = { fg = colors.fg, bg = colors.bg }
  },
  visual = {
    a = { fg = colors.bg, bg = colors.macro, gui = 'bold' },
    b = { fg = colors.fg, bg = colors.bg_alt },
    c = { fg = colors.fg, bg = colors.bg }
  },
  replace = {
    a = { fg = colors.bg, bg = colors.invalid, gui = 'bold' },
    b = { fg = colors.fg, bg = colors.bg_alt },
    c = { fg = colors.fg, bg = colors.bg }
  },
  command = {
    a = { fg = colors.bg, bg = colors.comment, gui = 'bold' },
    b = { fg = colors.fg, bg = colors.bg_alt },
    c = { fg = colors.fg, bg = colors.bg }
  },
  inactive = {
    a = { fg = colors.fg, bg = colors.bg, gui = 'bold' },
    b = { fg = colors.fg, bg = colors.bg },
    c = { fg = colors.fg, bg = colors.bg }
  }
}
