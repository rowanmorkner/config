
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

-- vim.keymap.set("n", "n", "w", { remap = true, silent = true })
-- vim.keymap.set("n", "N", "W", { remap = true, silent = true })
-- vim.keymap.set("n", "E", "b", { remap = true, silent = true })
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

-- :!prettier % --write 
vim.keymap.set("n", "<leader>p", "<cmd>!prettier % --write<cr>", { remap = true, silent = true })
--shortcuts for brackets
--vim.keymap.set("i", "{", "{}<esc>i", { remap = true, silent = true })
--vim.keymap.set("i", "(", "()<esc>i", { remap = true, silent = true })
--vim.keymap.set("i", "[", "[]<esc>i", { remap = true, silent = true })

-- selection, cutting, pasting, commenting
--vim.keymap.set("n", "<cmd>j<cr>", "", { remap = true, silent = true })

-- 
-- Keybindings for LSP functionality
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { desc = "Go to declaration" })
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set('n', '?', vim.lsp.buf.hover, { desc = "Show hover information" })
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { desc = "Go to implementation" })
vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, { desc = "Show signature help" })
vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, { desc = "Go to type definition" })
vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, { desc = "Rename symbol" })
vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, { desc = "Code actions" })
vim.keymap.set('n', 'gr', vim.lsp.buf.references, { desc = "Find references" })
vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, { desc = "Format code" })

