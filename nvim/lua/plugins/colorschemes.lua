return {
  {
    "rose-pine/neovim",
    config = function()
      require('rose-pine').setup({
        variant = 'moon'
      })

      -- vim.cmd.colorscheme("rose-pine")
    end
  },
  {
    "michaeldyrynda/carbon",
    config = function()
      -- vim.cmd("colorscheme carbon")
    end,
  },
  {
    "akinsho/horizon.nvim",
    version = "*",
    config = function()
      -- vim.cmd.colorscheme("horizon")
      -- vim.o.background = "dark"
    end
  },
  {
    "sainnhe/gruvbox-material",
    enabled = true,
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_transparent_background = 0
      vim.g.gruvbox_material_foreground = "hard"
      vim.g.gruvbox_material_background = "hard" -- soft, medium, hard
      vim.g.gruvbox_material_ui_contrast = "high" -- The contrast of line numbers, indent lines, etc.
      vim.g.gruvbox_material_float_style = "bright" -- Background of floating windows
      vim.g.gruvbox_material_statusline_style = "original"
      vim.g.gruvbox_material_cursor = "auto"

      vim.cmd.colorscheme("gruvbox-material")
    end,
  },
}
