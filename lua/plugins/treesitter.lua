return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter").setup({
        install_dir = vim.fn.stdpath("data") .. "/site",
      })
      require("nvim-treesitter").install({ "c", "cpp", "c_sharp", "lua", "vim" })

      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "c", "cpp", "cs", "lua", "vim" },
        callback = function()
          vim.treesitter.start()
        end,
      })
    end,
  },
}
