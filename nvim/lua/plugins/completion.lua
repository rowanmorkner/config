
return {
  {
  -- Plugin: nvim-cmp (completion engine)
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",  -- Load the plugin only when entering Insert mode to improve startup performance
    dependencies = {  -- List of plugins required for nvim-cmp to work properly
      "hrsh7th/cmp-nvim-lsp",  -- Enables LSP-based autocompletion (e.g., function names, variables)
      "hrsh7th/cmp-buffer",  -- Provides completion suggestions from the current buffer
      "hrsh7th/cmp-path",  -- Enables file path completion
      "hrsh7th/cmp-cmdline",  -- Adds autocompletion for commands in the command-line mode (e.g., `:`)
      {
        "L3MON4D3/LuaSnip",  -- Snippet engine for expanding predefined code snippets
        dependencies = { "rafamadriz/friendly-snippets" },  -- Collection of predefined snippets
      },
    },
    config = function()
      -- Load the completion engine
      local cmp = require("cmp")

      -- Set up nvim-cmp with specific configuration
      cmp.setup({
        -- Configure snippet expansion
        snippet = {
          expand = function(args)
            -- Use LuaSnip to expand snippets when triggered
            require("luasnip").lsp_expand(args.body)
          end,
        },
        -- Key mappings for interacting with the completion menu
        mapping = cmp.mapping.preset.insert({
          ["<C-Space>"] = cmp.mapping.complete(),  -- Manually trigger completion menu with Ctrl+Space
          ["<CR>"] = cmp.mapping.confirm({ select = true }),  -- Confirm the selected completion item with Enter
          
          -- Tab navigation: Move to the next item in the completion menu
          ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()  -- If completion menu is visible, select the next item
            else
              fallback()  -- Otherwise, use default Tab behavior
            end
          end, { "i", "s" }),  -- Works in Insert and Select modes

          -- Shift+Tab navigation: Move to the previous item in the completion menu
          ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()  -- If completion menu is visible, select the previous item
            else
              fallback()  -- Otherwise, use default Shift+Tab behavior
            end
          end, { "i", "s" }),  -- Works in Insert and Select modes
        }),

        -- Define completion sources (where suggestions come from)
        sources = cmp.config.sources({
          { name = "copilot", group_index = 2 },  -- Copilot suggestions
          { name = "nvim_lsp", group_index = 2 },  -- Get completion suggestions from the Language Server Protocol (LSP)
          { name = "luasnip", group_index = 2 },  -- Enable snippet expansion
        }, {
          { name = "buffer" },  -- Add words from the current buffer as suggestions
          { name = "path" },  -- Enable file path completion
        }),
      })
    end,
  },
}
