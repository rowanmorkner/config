--open file browser
vim.keymap.set("n", "`", "<Cmd>NvimTreeFindFileToggle<CR>", { remap = true, silent = true })
--jump left to file browser 
vim.keymap.set("n", "<C-h>", "<Cmd>wincmd h<CR>", { remap = true, silent = true })
--jump right to text editor
vim.keymap.set("n", "<C-l>", "<Cmd>wincmd l<CR>", { remap = true, silent = true })
--jump up/down 10 rows
vim.keymap.set("n", "K", "10gk", { remap = true, silent = true })
vim.keymap.set("n", "J", "10gj", { remap = true, silent = true })
--jump back one word

vim.keymap.set("n", "n", "w", { remap = true, silent = true })
vim.keymap.set("n", "E", "b", { remap = true, silent = true })
--jump to beginning and end of lines
vim.keymap.set("n", "H", "^", { remap = true, silent = true })
vim.keymap.set("n", "L", "$l", { remap = true, silent = true })

--when [command] enter edit mode 
vim.keymap.set("n", "<BS>", "i<BS>", { remap = true, silent = true })
vim.keymap.set("n", "<return>", "i<return>", { remap = true, silent = true })

--escape sequence
vim.keymap.set("i", "jj", "<ESC>l", { remap = true, silent = true })
vim.keymap.set("i", "jk", "<ESC>l", { remap = true, silent = true })
vim.keymap.set("i", "kk", "<ESC>l", { remap = true, silent = true })
vim.keymap.set("i", "kj", "<ESC>l", { remap = true, silent = true })

--close and save
--vim.keymap.set("n", "ww", "<cmd>w<cr>", { remap = true, silent = true })
vim.keymap.set("n", "WW", "<cmd>wa<cr>", { remap = true, silent = true })
vim.keymap.set("n", "qq", "<cmd>q<cr>", { remap = true, silent = true })
vim.keymap.set("n", "QQ", "<cmd>wqa<cr>", { remap = true, silent = true })
vim.keymap.set("n", "<leader>f", "<cmd>!stlua %<cr>", { remap = true, silent = true })

--shortcuts for brackets
vim.keymap.set("i", "{", "{}<esc>i", { remap = true, silent = true })
vim.keymap.set("i", "(", "()<esc>i", { remap = true, silent = true })
vim.keymap.set("i", "[", "[]<esc>i", { remap = true, silent = true })

-- selection, cutting, pasting, commenting
--vim.keymap.set("n", "<cmd>j<cr>", "", { remap = true, silent = true })

