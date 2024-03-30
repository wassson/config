return {
  "mfussenegger/nvim-lint",
  config = function()
    require("lint").linters_by_ft = {
      lua = { "luacheck" },
      javascript = { "eslint" },
      typescript = { "eslint" },
      ruby = { "rubocop" },
      erb = { "erb-lint" },
      sh = { "shellcheck" },
      markdown = { "markdownlint" },
      vim = { "vint" },
      yaml = { "yamllint" },
      json = { "jsonlint" },
      python = { "flake8" },
      go = { "golangci-lint" },
      rust = { "cargo" },
      dockerfile = { "hadolint" },
      html = { "tidy" },
      svelte = { "eslint" }
    }
  end
}
