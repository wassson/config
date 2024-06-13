
return {
  { "briones-gabriel/darcula-solid.nvim", name = "darcula-solid", dependencies = { "rktjmp/lush.nvim" }},
  { "wassson/wasppuccin" }, -- run with catppuccin for now
  { "rose-pine/neovim", 
    name = "rose-pine",
    config = function() 
      require('rose-pine').setup({
        variant = 'moon'
      })
    end
  },
  {
    "LazyVim/LazyVim",
    opts = {
     colorscheme = "rose-pine"
    },
  },
}

