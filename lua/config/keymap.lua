-- Tab Management
vim.keymap.set("n", "<C-l>", "<cmd>BufferNext<cr>", { desc = "Next buffer" })
vim.keymap.set("n", "<C-h>", "<cmd>BufferPrevious<cr>", { desc = "Previous buffer" })
vim.keymap.set("n", "<leader>tc", "<cmd>BufferClose<cr>", { desc = "Close buffer" })

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic" })
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Diagnostic list" })

-- Telescope
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Telescope help tags" })

-- LSP
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP Code Action" })

-- LazyGit -- Not needed just in case I forgor
-- { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
