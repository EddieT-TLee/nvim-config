return {
  {
    "stevearc/conform.nvim",
    config = function()
      require("conform").setup({
        formatters_by_ft = {
          lua = { "stylua" },
          c = { "clang_format" },
          cpp = { "clang_format" },
          cs = { "csharpier" },
        },
        format_on_save = {
          timeout_ms = 500,
          lsp_format = "fallback",
        },
      })

      vim.keymap.set("n", "<leader>gf", function()
        require("conform").format({ async = true })
      end, { desc = "Format file" })
    end,
  },
}
