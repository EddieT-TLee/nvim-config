require("config.options")
require("config.lazy")
require("config.keymap")

vim.api.nvim_create_autocmd({ "TextChanged" }, {
	callback = function()
		vim.diagnostic.reset(nil, 0)
	end,
})
