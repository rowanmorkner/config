vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

require("config.lazy")
require("config.keymap")
require("config.settings")
require("autoclose").setup()

-- Configure Biome LSP using new vim.lsp.config API
vim.lsp.config.biome = {}
vim.lsp.enable('biome')
