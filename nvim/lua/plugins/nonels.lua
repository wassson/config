return {
  {
    "nvimtools/none-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "jay-babu/mason-null-ls.nvim",
      "nvim-lua/plenary.nvim",
    },
    config = function()
      local mason_null_ls = require("mason-null-ls")
      local null_ls = require("null-ls")

      local null_ls_utils = require("null-ls.utils")

      mason_null_ls.setup({
        ensure_installed = {
          "prettier", -- prettier formatter
          "stylua", -- lua formatter
          "terraform_fmt", -- terraform formatter
          "terraform_validate", -- terraform linter
          "shellcheck", -- shell linter
          "yamllint", -- yaml linter
          "buf", -- buf formatter
          "beautysh", -- shell formatter
          "yamlfmt", -- yaml formatter
          "spell", -- spell checker
        },
      })

      local formatting = null_ls.builtins.formatting
      local diagnostics = null_ls.builtins.diagnostics
      local code_actions = null_ls.builtins.code_actions

      -- local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

      null_ls.setup({
        root_dir = null_ls_utils.root_pattern(".null-ls-root", "Makefile", ".git", "package.json"),

        sources = {
          formatting.stylua,
          formatting.prettier,
          formatting.terraform_fmt,
          formatting.buf,
          formatting.beautysh,
          formatting.yamlfmt,
          diagnostics.terraform_validate,
          diagnostics.shellcheck,
          diagnostics.yamllint,
          code_actions.gitsigns,
          code_actions.refactoring,
        },
      })
    end,
  },
}
