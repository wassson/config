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
    "ellisonleao/gruvbox.nvim",
    config = function()
      require("gruvbox").setup({
        terminal_colors = true,
        italic = {
          strings = false,
          emphasis = false,
          comments = true,
          operators = false,
          folds = true,
        },
        contrast = "hard",
        palette_overrides = {
        },
      })
      -- vim.cmd([[highlight @punctuation.bracket guifg=#ffffff]])
      -- vim.cmd("colorscheme gruvbox")
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
