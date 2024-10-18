vim.opt.guicursor = "" -- make cursor one line thick
vim.opt.nu = true -- show numbers in editor
vim.opt.relativenumber = true -- show relative line numbers in editor

 -- set tab to 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

vim.opt.shiftwidth = 4 -- make indents 4 wide
vim.opt.smartindent = true -- auto indent on new line
vim.opt.wrap = false -- dont wrap text in the editor

vim.opt.swapfile = false -- disable swapfile
vim.opt.backup = false -- disable backup of file
vim.opt.undodir = os.getenv("HOME") .. "/.cache/nvim_undo" -- set place for undodir
vim.opt.undofile = true -- file which holds undos

vim.opt.scrolloff = 8 -- always leave 8 lines in view when scrolling
vim.opt.signcolumn = "yes:1" -- adds place for signs (plugin needed)

vim.opt.termguicolors = true -- enable truecolor
