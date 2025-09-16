return {
  {
    "hkupty/iron.nvim",
    config = function()
      local iron = require("iron.core")
      local view = require("iron.view")

      iron.setup {
        config = {
          -- Whether a repl should be discarded or not
          scratch_repl = true,
          -- Your repl definitions come here
          repl_definition = {
            sh = {
              -- Can be a table or a function that
              -- returns a table (see below)
              command = {"zsh"}
            },
            python = {
              command = { "python3" },  -- or { "ipython", "--no-autoindent" }
              format = require("iron.fts.common").bracketed_paste,
            },
            r = {
              command = {"R", "--no-save"}
            }
          },
          -- How the repl window will be displayed
          -- See below for more information
          repl_open_cmd = view.right(50),
        },
        -- Iron doesn't set keymaps by default anymore.
        -- You can set them here or manually add keymaps to the functions in iron.core
        keymaps = {
          send_motion = "<space>sc",
          visual_send = "<space>sc",
          send_file = "<space>sf",
          send_line = "<space>sl",
          send_mark = "<space>sm",
          mark_motion = "<space>mc",
          mark_visual = "<space>mc",
          remove_mark = "<space>md",
          cr = "<space>s<cr>",
          interrupt = "<space>s<space>",
          exit = "<space>sq",
          clear = "<space>cl",
        },
        -- If the highlight is on, you can change how it looks
        -- For the available options, check nvim_set_hl
        highlight = {
          italic = true
        },
        ignore_blank_lines = true, -- ignore blank lines when sending visual select lines
      }

      -- iron also has a list of commands, see :h iron-commands for all available commands
      vim.keymap.set('n', '<space>rs', '<cmd>IronRepl<cr>')
      vim.keymap.set('n', '<space>rr', '<cmd>IronRestart<cr>')
      vim.keymap.set('n', '<space>rf', '<cmd>IronFocus<cr>')
      vim.keymap.set('n', '<space>rh', '<cmd>IronHide<cr>')
    end,
  },
  {
    "jpalardy/vim-slime",
    config = function()
      vim.g.slime_target = "neovim"
      vim.g.slime_python_ipython = 1
      vim.g.slime_dont_ask_default = 1
      vim.g.slime_default_config = {
        socket_name = "default",
        target_pane = "{last}"
      }
      
      -- Key mappings
      vim.keymap.set('n', '<C-c><C-c>', '<Plug>SlimeParagraphSend', { desc = "Send paragraph" })
      vim.keymap.set('v', '<C-c><C-c>', '<Plug>SlimeRegionSend', { desc = "Send region" })
      vim.keymap.set('n', '<C-c>v', '<Plug>SlimeConfig', { desc = "Configure slime" })
    end,
  },
}