return {
  {
    "ayu-theme/ayu-vim",
    name = "ayu",
    config = function()
      ---@diagnostic disable-next-line: unused-local
      local ayucolor = "dark"
    end,
  },
  { 
    "catppuccin/nvim", 
    name = "catppuccin", 
    priority = 1000,
    opts = {
      flavor = "mocha"
    }
  },
  { "doums/darcula", name = "darcula" },
  { "projekt0n/github-nvim-theme" }, -- github_dark_default
  { "rose-pine/neovim", name = "rose-pine" },
  {
    "sainnhe/gruvbox-material",
    name = "gruvbox-material",
    config = function()
      vim.g.gruvbox_material_foreground = "hard" -- or "medium"
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_ui_contrast = "high"
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
     colorscheme = "gruvbox-material",
    },
  },
}
