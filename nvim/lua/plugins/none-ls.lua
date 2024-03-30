return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        -- eslint
        --null_ls.builtins.diagnostics.eslint,
        -- prettier
        null_ls.builtins.formatting.prettier,
        -- lua
        null_ls.builtins.formatting.stylua,
        -- rubocop
        null_ls.builtins.diagnostics.rubocop,
        null_ls.builtins.formatting.rubocop
      },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
