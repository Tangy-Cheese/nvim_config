-- which lsps servers to enable
vim.lsp.enable({
  "lua_ls",
  "clangd",
  "pyright",
  "ts_ls",
  "texlab",
})

-- diagnostic config of gutter
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

-- Diagnostis config
-- error displays in buffer
vim.diagnostic.config({
  virtual_text = true,
})

--lua variable to show state of diagnostic
local diagnostics_visible = true

--toggle keybind in normalmode to flip the diagnostic state
vim.keymap.set("n", "<leader>td", function()
  diagnostics_visible = not diagnostics_visible
   -- Apply the boolean to virtual text  
  vim.diagnostic.config({ virtual_text = diagnostics_visible })
end)

--more keymaps
-- ]d to go to next diagnostic
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
-- [d to go to prev diagnostic
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
-- Show the popup diagnostic 
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float)

