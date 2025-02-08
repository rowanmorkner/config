return {
        {
          "m4xshen/autoclose.nvim",
          config = function()
            require("autoclose").setup({
              -- Optional: Override any default options here
              -- For example, to change behavior for the "$" key:
              -- keys = {
              --   ["$"] = { escape = true, close = true, pair = "$$" },
              -- },
              -- options = {
              --   disabled_filetypes = { "text", "markdown" },
              -- },
            })
          end,
        },
      }
      
