return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            vim.cmd.colorscheme "catppuccin-mocha" -- Or use latte, frappe, macchiato
        end,
    },

  -- {
  --   "skylarmb/torchlight.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {
  --     contrast = "medium", -- possible values: soft, medium, hard
  --   },
  -- },
}
