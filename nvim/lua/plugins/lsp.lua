return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
          }
        }
      })
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "clangd",
          "pyright",
          "ts_ls",
          "html",
        },
        automatic_installation = true,
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp"
    },
    config = function()
      local lspconfig = require("lspconfig")

      -- Safe capabilities setup with error handling
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      local has_cmp_lsp, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
      if has_cmp_lsp then
        capabilities = cmp_nvim_lsp.default_capabilities(capabilities)
      end

      -- Basic LSP configurations
      lspconfig.clangd.setup({ capabilities = capabilities })
      lspconfig.pyright.setup({ capabilities = capabilities })
      lspconfig.ts_ls.setup({ capabilities = capabilities })
      lspconfig.html.setup({ capabilities = capabilities })
    end,
  },
}