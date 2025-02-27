return {
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "clangd",    -- C/C++ language server
          "pyright",   -- Python language server
          "eslint",    -- ESLint language server
          "ts_ls",     -- TypeScript language server
          "html",      -- HTML language server
        },
        automatic_installation = true,
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- Configure C/C++ LSP (clangd)
      lspconfig.clangd.setup({
        capabilities = capabilities,
        cmd = {
          "clangd",
          "--background-index",
          "--clang-tidy",
          "--completion-style=detailed",
          "--header-insertion=iwyu",
          "--suggest-missing-includes",
        },
      })

      -- Configure Python LSP (pyright)
      lspconfig.pyright.setup({
        capabilities = capabilities,
        settings = {
          python = {
            analysis = {
              autoSearchPaths = true,
              useLibraryCodeForTypes = true,
              diagnosticMode = "workspace",
            },
          },
        },
      })

      -- Configure ESLint LSP
      lspconfig.eslint.setup({
        capabilities = capabilities,
        -- Optional: enable automatic formatting on save if desired
        settings = {
          format = { enable = true },
        },
        -- Define the root directory by looking for common ESLint config files or package.json
        root_dir = lspconfig.util.root_pattern(
          ".eslintrc",
          ".eslintrc.js",
          ".eslintrc.json",
          ".eslintrc.yaml",
          ".eslintrc.yml",
          "package.json"
        ),
        filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
      })

      -- Configure TypeScript LSP (ts_ls)
      lspconfig.ts_ls.setup({
        capabilities = capabilities,
        filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
        init_options = {
          hostInfo = "neovim",
        },
        -- Optionally, add additional settings specific to ts_ls here.
      })

      -- Configure HTML LSP
      lspconfig.html.setup({
        capabilities = capabilities,
        filetypes = { "html" },
      })
    end,
  },
}
