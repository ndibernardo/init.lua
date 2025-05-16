local theme = "cyberdream"

return {
  {
    "EdenEast/nightfox.nvim",
    enabled = true,
    config = function ()
        -- vim.cmd([[colorscheme carbonfox]])
    end
  },
  {
    "tanvirtin/monokai.nvim",
    enabled = true,
    config = function ()
        -- vim.cmd([[colorscheme carbonfox]])
    end
  },
  {
    'benjaminwhite/Benokai'
  },
  {
    'kvrohit/substrata.nvim',
    enabled = theme == "substrata",
    config = function ()
      vim.cmd [[colorscheme substrata]]
    end
  },
  {
    'kvrohit/rasmus.nvim',
    enabled = true,
    config = function ()
      vim.g.rasmus_italic_functions = false
      vim.g.rasmus_bold_functions = false
      vim.g.rasmus_transparent = true
      -- vim.cmd [[colorscheme rasmus]]
      vim.api.nvim_set_hl(0, 'Special', { italic = false })
      vim.api.nvim_set_hl(0, 'LspReferenceText', { link = 'Visual' })
      vim.api.nvim_set_hl(0, 'LspReferenceRead', { link = 'Visual' })
      vim.api.nvim_set_hl(0, 'LspReferenceWrite', { link = 'Visual'})
      vim.api.nvim_set_hl(0, '@property', { link = '@variable'})
    end
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    init = function()
      require("tokyonight").setup({
        style = "night",
        styles = {
          comments = { italic = false },
          keywords = { italic = false },
        },
      })
      -- vim.cmd "colorscheme tokyonight-night"
    end,
  },
  {
    "scottmckendry/cyberdream.nvim",
    -- enabled = true,
    lazy = false,
    priority = 1000000,
    opts = {
      borderless_pickers = false,
      saturation = 0.95,
      cache = true,
    },
    init = function()
      -- vim.cmd "colorscheme cyberdream"
      -- vim.api.nvim_set_hl(0, "TroubleNormal", { bg = "none", ctermbg = "none" })
      -- vim.api.nvim_set_hl(0, "TroubleNormalNC", { bg = "none", ctermbg = "none" })
      -- vim.api.nvim_set_hl(0, "TroubleNormal", { bg = "none", ctermbg = "none" })
      -- vim.api.nvim_set_hl(0, "TroubleNormalNC", { bg = "none", ctermbg = "none" })
      -- vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#3c4048", bg = "none" })
      -- vim.api.nvim_set_hl(0, "IndentBlanklineChar", { fg = "#7b8496" })
      -- vim.api.nvim_set_hl(0, "TreesitterContext", { bg = "#232429" })
      -- vim.api.nvim_set_hl(0, "TreesitterContextLineNumber", { bg = "#232429" })
      -- vim.api.nvim_set_hl(0, "TreesitterContextBottom", { bg = "#232429", underline = true })
    end,
  },
   {
    "ellisonleao/gruvbox.nvim",
    enabled = true,
    config = function()
      require("gruvbox").setup({
        terminal_colors = true, -- add neovim terminal colors
        undercurl = true,
        underline = true,
        bold = false,
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
        inverse = false,    -- invert background for search, diffs, statuslines and errors
        contrast = "hard", -- can be "hard", "soft" or empty string
        palette_overrides = {},
        overrides = {
          ["Delimiter"] = { link = "GruvboxGray" },
          ["@punctuation.delimiter"] = { link = "GruvboxGray" },
          ["@punctuation.bracket"] = { link = "GruvboxGray" },
          ["@punctuation.special"] = { link = "GruvboxGray" },
          ["LspReferenceText"] = { bg = "#3c3836"},
          ["@constructor"] = { link = "GruvboxGray" },
          -- ["@property"] = { link = "Normal" },
          -- ["@function.builtin"] = { link = "GruvboxRed" },
          -- ["@keyword.import"] = { link = "GruvboxRed" },
          -- ["@variable.builtin"] = { link = "Normal" },
          -- ["@variable.member"] = { link = "Normal" },
          -- ["@type"] = { link = "Normal" },
          -- ["@function"] = { link = "GruvboxBlue" },
          -- ["@function.call"] = { link = "GruvboxBlue" },
          -- ["Operator"] = { link = "GruvboxBlue" },
        },
        dim_inactive = false,
        transparent_mode = false,
      })
      -- vim.o.background = "dark" -- or "light" for light mode
      -- vim.cmd([[colorscheme gruvbox]])
    end
  },
  {
    "rebelot/kanagawa.nvim",
    config = function ()
      require('kanagawa').setup({
        compile = false,             -- enable compiling the colorscheme
        undercurl = true,            -- enable undercurls
        commentStyle = { italic = false },
        functionStyle = {},
        keywordStyle = { italic = false },
        statementStyle = { bold = false },
        typeStyle = {},
        transparent = false,         -- do not set background color
        dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
        terminalColors = true,       -- define vim.g.terminal_color_{0,17}
        colors = {                   -- add/modify theme and palette colors
            palette = {},
            theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
        },
        overrides = function(colors) -- add/modify highlights
            return {}
        end,
        theme = "dragon",              -- Load "wave" theme when 'background' option is not set
        background = {               -- map the value of 'background' option to a theme
            dark = "dragon",           -- try "dragon" !
            light = "lotus"
        },
    })

    -- setup must be called before loading
      -- vim.cmd("colorscheme kanagawa-dragon")
    end
  },
  {
    "dgraham/xcode-low-key-vim",
    config = function()
      -- vim.api.nvim_command([[
      --     augroup ChangeBackgroudColour
      --         autocmd colorscheme * :hi normal guibg=#ffffff
      --     augroup END
      -- ]])
      -- vim.o.termguicolors = true
      -- vim.cmd([[colorscheme xcode-low-key]])
    end
  }
}
