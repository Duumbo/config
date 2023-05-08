vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Cool moving in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Spelling remap
vim.keymap.set("n", "<leader>l", ":setlocal spell spelllang=en_us<CR>")
vim.keymap.set("n", "<leader>m", ":setlocal spell spelllang=fr<CR>")

-- Open new current dir
vim.keymap.set("n", "<leader>d", ":new<CR>:e .<CR>")

