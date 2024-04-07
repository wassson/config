-- TODO

-- references:
-- https://github.com/nvim-neo-tree/neo-tree.nvim
-- https://github.com/nvim-neo-tree/neo-tree.nvim/wiki/Recipes
return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  event = "VeryLazy",
  keys = {
    { "<leader>e",     ":Neotree toggle float<CR>", silent = true, desc = "Float File Explorer" },
    { "<leader><tab>", ":Neotree toggle right<CR>",  silent = true, desc = "Left File Explorer" },
  },
  config = function()
    local function copy_path(state)
	-- NeoTree is based on [NuiTree](https://github.com/MunifTanjim/nui.nvim/tree/main/lua/nui/tree)
	-- The node is based on [NuiNode](https://github.com/MunifTanjim/nui.nvim/tree/main/lua/nui/tree#nuitreenode)
	local node = state.tree:get_node()
	local filepath = node:get_id()
	local filename = node.name
	local modify = vim.fn.fnamemodify

	local results = {
		filepath,
		modify(filepath, ":."),
		modify(filepath, ":~"),
		filename,
		modify(filename, ":r"),
		modify(filename, ":e"),
	}

	vim.ui.select({
		"1. Absolute path: " .. results[1],
		"2. Path relative to CWD: " .. results[2],
		"3. Path relative to HOME: " .. results[3],
		"4. Filename: " .. results[4],
		"5. Filename without extension: " .. results[5],
		"6. Extension of the filename: " .. results[6],
	}, { prompt = "Choose to copy to clipboard:" }, function(choice)
		if choice then
			local i = tonumber(choice:sub(1, 1))
			if i then
				local result = results[i]
				vim.fn.setreg('"', result)
				vim.notify("Copied: " .. result)
			else
				vim.notify("Invalid selection")
			end
		else
			vim.notify("Selection cancelled")
		end
	end)
    end
    require("neo-tree").setup({
      close_if_last_window = true,
      popup_border_style = "single",
      enable_git_status = true,
      enable_modified_markers = true,
      enable_diagnostics = true,
      sort_case_insensitive = true,
      default_component_configs = {
        indent = {
          with_markers = true,
          with_expanders = true,
        },
        modified = {
          symbol = " ",
          highlight = "NeoTreeModified",
        },
        icon = {
          folder_closed = "",
          folder_open = "",
          folder_empty = "",
          folder_empty_open = "",
        },
        git_status = {
          symbols = {
            -- Change type
            added = "",
            deleted = "",
            modified = "",
            renamed = "",
            -- Status type
            untracked = "",
            ignored = "",
            unstaged = "",
            staged = "",
            conflict = "",
          },
        },
      },
      window = {
        position = "float",
        width = 35,
        mappings = {
          ["Y"] = copy_path,
        }
      },
      filesystem = {
        use_libuv_file_watcher = true,
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_by_name = {
            "node_modules",
          },
          never_show = {
            ".DS_Store",
            "thumbs.db",
          },
        },
      },
      event_handlers = {
        {
          event = "neo_tree_window_after_open",
          handler = function(args)
            if args.position == "left" or args.position == "right" then
              vim.cmd("wincmd =")
            end
          end,
        },
        {
          event = "neo_tree_window_after_close",
          handler = function(args)
            if args.position == "left" or args.position == "right" then
              vim.cmd("wincmd =")
            end
          end,
        },
      },
    })
  end,
}
