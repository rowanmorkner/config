return {
  -- Better statusline
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup({
        options = {
          theme = 'auto',
          section_separators = { left = '', right = '' },
          component_separators = { left = '', right = '' },
        },
        sections = {
          lualine_a = {'mode'},
          lualine_b = {'branch', 'diff', 'diagnostics'},
          lualine_c = {'filename'},
          lualine_x = {
            {
              function()
                local kernels = vim.fn['molten#kernels']()
                if kernels and #kernels > 0 then
                  return "🔥 " .. table.concat(kernels, ", ")
                end
                return ""
              end,
              color = { fg = '#ff6c6b' }
            },
            'encoding', 'fileformat', 'filetype'
          },
          lualine_y = {'progress'},
          lualine_z = {'location'}
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = {'filename'},
          lualine_x = {'location'},
          lualine_y = {},
          lualine_z = {}
        },
      })
    end,
  },
  -- Better buffer line
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require("bufferline").setup({
        options = {
          diagnostics = "nvim_lsp",
          separator_style = "slant",
          show_buffer_close_icons = false,
          show_close_icon = false,
        }
      })
      -- Buffer navigation
      vim.keymap.set('n', '<Tab>', '<cmd>BufferLineCycleNext<cr>', { desc = "Next buffer" })
      vim.keymap.set('n', '<S-Tab>', '<cmd>BufferLineCyclePrev<cr>', { desc = "Previous buffer" })
      vim.keymap.set('n', '<leader>bd', '<cmd>bdelete<cr>', { desc = "Delete buffer" })
    end,
  },
  -- Indent guides
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    config = function()
      require("ibl").setup({
        indent = {
          char = "│",
        },
        scope = {
          show_start = false,
          show_end = false,
        },
      })
    end,
  },
  -- Better fold display
  {
    "kevinhwang91/nvim-ufo",
    dependencies = "kevinhwang91/promise-async",
    config = function()
      vim.o.foldcolumn = '1'
      vim.o.foldlevel = 99
      vim.o.foldlevelstart = 99
      vim.o.foldenable = true

      require('ufo').setup({
        provider_selector = function(bufnr, filetype, buftype)
          return {'treesitter', 'indent'}
        end
      })

      -- Folding keymaps
      vim.keymap.set('n', 'zR', require('ufo').openAllFolds, { desc = "Open all folds" })
      vim.keymap.set('n', 'zM', require('ufo').closeAllFolds, { desc = "Close all folds" })
    end,
  },
  -- Dashboard/start screen
  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup({
        theme = 'hyper',
        config = {
          week_header = {
           enable = true,
          },
          shortcut = {
            { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
            {
              icon = ' ',
              icon_hl = '@variable',
              desc = 'Files',
              group = 'Label',
              action = 'Telescope find_files',
              key = 'f',
            },
            {
              desc = ' Recent',
              group = 'DiagnosticHint',
              action = 'Telescope oldfiles',
              key = 'r',
            },
            {
              desc = ' Quarto',
              group = 'Number',
              action = 'e test.qmd',
              key = 'q',
            },
          },
        },
      })
    end,
    dependencies = { {'nvim-tree/nvim-web-devicons'}}
  },
}