local M = {}

function M.setup()

  -- bright border for window splits
  vim.api.nvim_set_hl(0, "WinSeparator", {
    fg = "#00ff9c",
    bold = true,
  })

end

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    M.setup()
  end,
})

M.setup()

return M
