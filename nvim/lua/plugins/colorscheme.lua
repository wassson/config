return {
  { "briones-gabriel/darcula-solid.nvim", name = "darcula-solid", dependencies = { "rktjmp/lush.nvim" }},
  { "wassson/dote" }, -- run with catppuccin for now
  { "rose-pine/neovim", name = "rose-pine" },
  {
    "LazyVim/LazyVim",
    opts = {
     colorscheme = "catppuccin", -- TODO: update dote
    },
  },
}
