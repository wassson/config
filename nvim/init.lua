vim.g.mapleader = " " -- change leader to a space

require("config.keymaps")
require("config.options")
require("config.autocmds")
require("config.abbreviations")
require("config.lazy")

-- vim.lsp.enable({
--   "ruby-lsp"
-- })

vim.lsp.enable({ 'luals' })
