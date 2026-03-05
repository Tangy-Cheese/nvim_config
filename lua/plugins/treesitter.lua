return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",

  config = function()

    -- setup install location
    require("nvim-treesitter").setup({
      install_dir = vim.fn.stdpath("data") .. "/site",
    })

    -- install parsers
    require("nvim-treesitter").install({
      "lua",
      "python",
      "bash",
      "markdown",
      "c",
      "cpp",
      "javascript",
      "latex",
      "bibtex",
    })

    -- enable treesitter highlighting
    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "lua","python","bash","markdown","c","cpp","javascript" },
      callback = function()
        vim.treesitter.start()
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })

  end,
}
