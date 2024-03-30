return {
  { "rose-pine/neovim", name = "rose-pine" },
  {
    "sainnhe/gruvbox-material",
    name = "gruvbox-material",
    config = function()
      vim.g.gruvbox_material_foreground = "material"
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_ui_contrast = "high"
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
     colorscheme = "rose-pine",
    },
  },
}
