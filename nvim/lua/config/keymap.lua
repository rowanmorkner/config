vim.keymap.set("n", "`", "<Cmd>NvimTreeFindFileToggle<CR>", { remap = true, silent = true })
vim.keymap.set("n", "<C-h>", "<Cmd>wincmd h<CR>", { remap = true, silent = true })

vim.keymap.set("n", "<C-l>", "<Cmd>wincmd l<CR>", { remap = true, silent = true })

vim.keymap.set("n", "K", "10gk", { remap = true, silent = true })
vim.keymap.set("n", "J", "10gj", { remap = true, silent = true })
vim.keymap.set("n", "E", "b", { remap = true, silent = true })

--jump to beginning and end of lines
vim.keymap.set("n", "H", "^", { remap = true, silent = true })
vim.keymap.set("n", "L", "$l", { remap = true, silent = true })
vim.keymap.set("n", "<BS>", "i<BS>", { remap = true, silent = true })
vim.keymap.set("i", "jj", "<ESC>l", { remap = true, silent = true })
vim.keymap.set("i", "jk", "<ESC>l", { remap = true, silent = true })
vim.keymap.set("i", "kk", "<ESC>l", { remap = true, silent = true })
vim.keymap.set("i", "kj", "<ESC>l", { remap = true, silent = true })

vim.keymap.set("i", "{", "{<esc>o}<esc>O", { remap = true, silent = true })
vim.keymap.set("i", "(", "()<esc>hi", { remap = true, silent = true })
vim.keymap.set("i", "[", "[]<esc>hi", { remap = true, silent = true })
vim.keymap.set("n", "ww", "<cmd>w<cr>", { remap = true, silent = true })
vim.keymap.set("n", "WW", "<cmd>wa<cr>", { remap = true, silent = true })
vim.keymap.set("n", "qq", "<cmd>q<cr>", { remap = true, silent = true })
vim.keymap.set("n", "QQ", "<cmd>wqa<cr>", { remap = true, silent = true })
vim.keymap.set("n", "<leader>f", "<cmd>!stylua %<cr>", { remap = true, silent = true })
