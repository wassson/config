return {
  {
    "nvim-treesitter/nvim-treesitter", 
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        auto_install = true,
        highlight = { enabled = true },
        indent = { enabled = true },
        ensure_installed = { "ruby", "javascript", "typescript" },
        vim.filetype.add({
          pattern = {
            ['.*%.html%.erb'] = 'html',
          },
        }),
      })
    end
  },
}
