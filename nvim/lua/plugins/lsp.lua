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
    dependencies = { "hrsh7th/cmp-nvim-lsp" },
    config = function()
      -- Safely get capabilities with fallback
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      local has_cmp_lsp, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
      if has_cmp_lsp then
        capabilities = cmp_nvim_lsp.default_capabilities(capabilities)
      end

      -- Helper function to find root directory
      local function root_pattern(...)
        local patterns = { ... }
        return function(fname)
          for _, pattern in ipairs(patterns) do
            local found = vim.fs.find(pattern, {
              upward = true,
              path = vim.fs.dirname(fname),
            })[1]
            if found then
              return vim.fs.dirname(found)
            end
          end
        end
      end

      -- Configure C/C++ LSP (clangd)
      vim.lsp.config.clangd = {
        cmd = {
          "clangd",
          "--background-index",
          "--clang-tidy",
          "--completion-style=detailed",
          "--header-insertion=iwyu",
          "--suggest-missing-includes",
        },
        capabilities = capabilities,
      }

      -- Configure Python LSP (pyright)
      vim.lsp.config.pyright = {
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
      }

      -- Configure ESLint LSP
      vim.lsp.config.eslint = {
        capabilities = capabilities,
        settings = {
          format = { enable = true },
        },
        root_dir = root_pattern(
          ".eslintrc",
          ".eslintrc.js",
          ".eslintrc.json",
          ".eslintrc.yaml",
          ".eslintrc.yml",
          "package.json"
        ),
        filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
      }

      -- Configure TypeScript LSP (ts_ls)
      vim.lsp.config.ts_ls = {
        capabilities = capabilities,
        filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
        init_options = {
          hostInfo = "neovim",
        },
      }

      -- Configure HTML LSP
      vim.lsp.config.html = {
        capabilities = capabilities,
        filetypes = { "html" },
      }

      -- Enable all configured LSP servers
      vim.lsp.enable({ "clangd", "pyright", "eslint", "ts_ls", "html" })
    end,
  },
{
  "folke/trouble.nvim",
  opts = {}, -- for default options, refer to the configuration section for custom setup.
  cmd = "Trouble",
  keys = {
    {
      "<leader>xx",
      "<cmd>Trouble diagnostics toggle<cr>",
      desc = "Diagnostics (Trouble)",
    },
    {
      "<leader>xX",
      "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
      desc = "Buffer Diagnostics (Trouble)",
    },
    {
      "<leader>cs",
      "<cmd>Trouble symbols toggle focus=false<cr>",
      desc = "Symbols (Trouble)",
    },
    {
      "<leader>cl",
      "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
      desc = "LSP Definitions / references / ... (Trouble)",
    },
    {
      "<leader>xL",
      "<cmd>Trouble loclist toggle<cr>",
      desc = "Location List (Trouble)",
    },
    {
      "<leader>xQ",
      "<cmd>Trouble qflist toggle<cr>",
      desc = "Quickfix List (Trouble)",
    },
  },
}
}
