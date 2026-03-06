vim.lsp.enable({
  "lua_ls",
  "clangd",
  "pyright",
  "ts_ls",
  "texlab",
})

vim.diagnostic.config({
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "",
      [vim.diagnostic.severity.WARN]  = "",
      [vim.diagnostic.severity.INFO]  = "",
      [vim.diagnostic.severity.HINT]  = "",
    },
  },
})

-- yellow warning sign
vim.api.nvim_set_hl(0, "DiagnosticSignWarn", {
  fg = "#FFD700",  -- bright yellow
  bold = true,
})
