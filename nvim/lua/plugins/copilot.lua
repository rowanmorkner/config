return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        suggestion = {
          enabled = true,
          auto_trigger = true,
          debounce = 75,
          keymap = {
            accept = "<C-j>",      -- Changed to Ctrl+j (easier to reach)
            accept_word = "<C-k>", -- Accept just one word
            next = "<C-n>",        -- Next suggestion  
            prev = "<C-p>",        -- Previous suggestion
            dismiss = "<C-e>",     -- Dismiss suggestion
          },
        },
        filetypes = {
          yaml = true,
          markdown = true,
          quarto = true,         -- Enable for .qmd files
          python = true,
          r = true,
          lua = true,
          help = false,
          gitcommit = false,
          gitrebase = false,
          ["."] = false,
        },
      })
    end,
  },
  {
    "zbirenbaum/copilot-cmp",
    enabled = false, -- Disabled since nvim-cmp is disabled
    dependencies = { "copilot.lua" },
    config = function()
      require("copilot_cmp").setup()
    end
  }
}
