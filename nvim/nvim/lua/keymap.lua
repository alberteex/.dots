vim.g.mapleader = " " -- set <Leader> to space
vim.keymap.set("n", "<leader>d", vim.cmd.Ex) -- bind EXIT on SPACE_D in normal mode

vim.keymap.set("i", "<C-c>", "<Esc>")

---- Normal mode
vim.keymap.set('n', '<Leader>s', ':write<CR>')
vim.keymap.set('n', '<Leader>a', ':wqa<CR>')

---- Insert mode
vim.keymap.set('i', '<F2>', '<esc>:write<CR>')
vim.keymap.set('i', '<F3>', '<esc>:wq<CR>')

vim.keymap.set('n', '<leader>o', ':<C-u>call append(line("."), repeat([""], v:count1))<CR>', defaults)
vim.keymap.set('n', '<leader>O', ':<C-u>call append(line(".")-1, repeat([""], v:count1))<CR>', defaults)
