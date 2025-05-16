vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

-- vim.opt.nu = true
-- vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.linespace = 2

vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.guicursor = ""
vim.opt.termguicolors=false

vim.opt.scrolloff = 8
vim.opt.isfname:append("@-@")
vim.opt.updatetime = 50

vim.cmd [[ colorscheme vim ]]
vim.cmd(':hi StatusLine ctermbg=NONE cterm=NONE')
vim.cmd(':hi NormalFloat ctermbg=NONE cterm=NONE')
vim.api.nvim_set_hl(0, 'Identifier', {link = 'Normal'})
vim.api.nvim_set_hl(0, 'Type', { ctermfg = 'Green' })
vim.api.nvim_set_keymap('n', '<ScrollWheelUp>', 'k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<ScrollWheelDown>', 'j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<ScrollWheelLeft>', 'h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<ScrollWheelRight>', 'l', { noremap = true, silent = true })
