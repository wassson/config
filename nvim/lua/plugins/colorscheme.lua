return {
  { "briones-gabriel/darcula-solid.nvim", name = "darcula-solid", dependencies = { "rktjmp/lush.nvim" }},
  {
      'sainnhe/gruvbox-material',
      lazy = false,
      priority = 1000,
      config = function()
        vim.g.gruvbox_material_enable_italic = true
        vim.g.gruvbox_material_background = 'hard'
        vim.cmd.colorscheme('gruvbox-material')
      end
  },
  { "sainnhe/sonokai", name = "sonokai" },
  {
    'AlexvZyl/nordic.nvim',
    lazy = false,
    priority = 1000,
    config = function()
        require 'nordic' .load()
    end
  },
  {
    "rose-pine/neovim",
    config = function()
      require('rose-pine').setup({
        variant = 'moon'
      })
    end
  },
  { "wassson/wasppuccin" }, -- run with catppuccin for now
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin"
     -- colorscheme = "rose-pine"
    },
  },
}

