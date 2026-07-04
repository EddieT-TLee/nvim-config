return {
	{
		"stevearc/oil.nvim",
		---@module 'oil'
		---@type oil.SetupOpts
		opts = {},
		-- Optional dependencies
		dependencies = { { "nvim-mini/mini.icons", opts = {} } },
		-- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
		-- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
		lazy = false,
		config = function()
			require("oil").setup({
				view_options = {
					show_hidden = false,
					is_hidden_file = function(name, bufnr)
						return vim.startswith(name, ".") or vim.endswith(name, ".meta")
					end,
				},
				keymaps = {
					["h"] = "actions.parent",
					["l"] = "actions.select",
					["."] = "actions.toggle_hidden",
					["g?"] = { "actions.show_help", mode = "n" },
					["Q"] = "actions.close",
				},
			})
		end,
	},
}
