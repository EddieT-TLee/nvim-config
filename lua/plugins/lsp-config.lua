return {
	{
		"mason-org/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			ensure_installed = { "lua_ls", "omnisharp", "clangd" },
		},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = { "hrsh7th/cmp-nvim-lsp" },
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			vim.lsp.config("lua_ls", {
				capabilities = capabilities,
			})

			vim.lsp.config("omnisharp", {
				cmd = { "omnisharp" },
				capabilities = capabilities,
				settings = {
					omnisharp = {
						useModernNet = false,
					},
				},
			})

			vim.lsp.config("clangd", {
				capabilities = capabilities,
			})

			vim.lsp.enable({ "lua_ls", "omnisharp", "clangd" })
		end,
	},
}
