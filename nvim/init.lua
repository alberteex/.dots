vim.opt.guicursor = "" -- make cursor one line thick
vim.opt.nu = true -- show numbers in editor
vim.opt.relativenumber = true -- show relative line numbers in editor

vim.g.mapleader = " " -- set <Leader> to space
vim.keymap.set("n", "<leader>d", vim.cmd.Ex) -- bind EXIT on SPACE_D in normal mode

 -- set tab to 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

vim.opt.shiftwidth = 4 -- make indents 4 wide
vim.opt.smartindent = true -- auto indent on new line
vim.opt.wrap = false -- dont wrap text in the editor

vim.opt.swapfile = false -- disable swapfile
vim.opt.backup = false -- disable backup of file
vim.opt.undodir = os.getenv("HOME") .. "/.config/nvim/undodir" -- set place for undodir
vim.opt.undofile = true -- file which holds undos

vim.opt.scrolloff = 8 -- always leave 8 lines in view when scrolling
vim.opt.signcolumn = "yes:1" -- adds place for signs (plugin needed)

vim.opt.termguicolors = true -- enable truecolor

-- Lazy.nvim plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")
