return {
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'make',
    config = function()
      require('telescope').load_extension('fzf')
    end
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
      {
        "<leader>f",
        function() require("telescope.builtin").find_files() end,
        desc = "Find File",
      },
      {
        "<leader>F",
        function() require("telescope.builtin").live_grep() end,
        desc = "Search in Files",
      }
    },
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
      },
    },
  }
}

