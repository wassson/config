return {
  {
      "devsjc/vim-jb.nvim",
      lazy = false,
      priority = 1000,
      opts = {},
      dev = true,
      config = function()
          -- vim.cmd("colorscheme jb")
      end,
  },
  {
    "rose-pine/neovim",
    config = function()
      require('rose-pine').setup({
        -- variant = 'moon'
      })

      -- vim.cmd.colorscheme("rose-pine")
    end
  },
  {
    "michaeldyrynda/carbon",
    config = function()
      -- vim.cmd("colorscheme carbon")
    end,
  },
  {
    "ellisonleao/gruvbox.nvim",
    config = function()
      require("gruvbox").setup({
        terminal_colors = true,
        italic = {
          strings = false,
          emphasis = false,
          comments = true,
          operators = false,
          folds = true,
        },
        overrides = {
          Comment = { fg = "#7A7E85" },
          Normal = { bg = "#1E1F22", fg = "#ffffff" },
          String = { fg = "#6AAB73"},
          Delimiter = { fg = "#BCBEC4" },
          Operator = { fg = "#BCBEC4" },
          Variable = { fg = "#C87DBB" },
          LineNr = { fg = "#4B5059" },
          CursorLine = { bg = "#26282D" },
          CursorLineNr = { fg = "#A0A2AA", bg = "#26282d" },
          SignColumn = { bg = "#1e1f22" },
          GitSignsAddLn = { bg = "#57A8F5" },
          GitSignsChangeLn = { bg = "#57A8F5" },
          Function = { fg = "#57A8F5" },
          Number = { fg = "#2AAAB7" },
          Float = { fg = "#2AAAB7" },
          ["@boolean.ruby"] = { fg = "#CE8E6D"},
          ["@constant.builtin.ruby"] = { fg = "#CB8C6C" },
          ["@variable.member.ruby"] = { fg = "#C87DBB" },
          ["@keyword.conditional.ruby"] = { fg = "#CE8E6D"},
          ["@keyword.embedded_template"] = { fg = "#CE8E6D" },
          ["@keyword.modifier.ruby"] = { fg = "#CD8E6D" },
          ["@keyword.return.ruby"] = { fg = "#CE8E6D" },
          ["@keyword.ruby"] = { fg = "#CE8E6D" },
          ["@keyword.type.ruby"] = { fg = "#CE8E6D" },
          ["@keyword.function.ruby"] = { fg = "#CE8E6D" },
          -- ["@function.ruby"] = { fg = "#256EFA" },
          ["@function.builtin.ruby"] = { fg = "#57A8F5" },
          -- ["@function.call.ruby"] = { fg = "#57A8F5" },
          ["@none.html"] = { fg = "#bcbec4" },
          ["punctuation.bracket"] = { fg = "#808285" },
          ["punctuation.bracket.ruby"] = { fg = "#808285" },
          ["@punctuation"] = { fg = "#808285" },
          ["@string.escape.ruby"] = { fg = "#CB8C6C" },
          ["@string.special.symbol.ruby"] = { fg = "#6aab73" },
          -- HTML
          ["@tag.attribute.html"] = { fg = "#C87DBB" },
          ["@tag.html"] = { fg = "#D5B778" },
          ["@type.ruby"] = { fg = "#70AFBD" }, -- class names
          ["@variable.builtin.ruby"] = { fg = "#CE8E6D" },
          ["@variable.ruby"] = { fg = "#BDBEC4" },
          ["@constructor.lua"] = { fg = "#808285" },
          --
          CursorWord = { bg = "NONE", fg = "NONE", underline = false },
          CursorWord0 = { bg = "NONE", fg = "NONE", underline = false },
          CursorWord1 = { bg = "NONE", fg = "NONE", underline = false },
          IlluminatedWord = { bg = "NONE", fg = "NONE", underline = false },
          IlluminatedCurWord = { bg = "NONE", fg = "NONE", underline = false },
          LspReferenceText = { bg = "NONE", fg = "NONE", underline = false },
          LspReferenceWrite = { bg = "NONE", fg = "NONE", underline = false },
          LspReferenceRead = { bg = "NONE", fg = "NONE", underline = false },
        },
        palette_overrides = {
        },
      })
      vim.cmd([[highlight @punctuation.bracket guifg=#ffffff]])
      vim.cmd("colorscheme gruvbox")
    end
  }
  -- {
  --   "sainnhe/gruvbox-material",
  --   enabled = true,
  --   priority = 1000,
  --   config = function()
  --     vim.g.gruvbox_material_transparent_background = 0
  --     vim.g.gruvbox_material_foreground = "mix"
  --     vim.g.gruvbox_material_background = "hard" -- soft, medium, hard
  --     vim.g.gruvbox_material_ui_contrast = "high" -- The contrast of line numbers, indent lines, etc.
  --     vim.g.gruvbox_material_float_style = "bright" -- Background of floating windows
  --     vim.g.gruvbox_material_statusline_style = "material"
  --     vim.g.gruvbox_material_cursor = "auto"
  --
  --     vim.cmd.colorscheme("gruvbox-material")
  --   end,
  -- },
}
