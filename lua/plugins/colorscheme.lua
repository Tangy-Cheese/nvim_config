return {
  {
    "maxmx03/fluoromachine.nvim",
    priority = 1000,
    config = function()
      require("fluoromachine").setup({
        glow = true, -- disable glow for cleaner look
        theme = "fluoromachine", -- default variant
      })
      vim.cmd("colorscheme fluoromachine")
    end,
  },
}
