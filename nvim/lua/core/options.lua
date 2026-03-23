local opt = vim.opt

--Numbering of lines for side of screen
opt.number = true

--Numbering of lines relative to cursor
opt.relativenumber = true

--Highlight the current line
opt.cursorline = true

--Tab settings for 4 spaces

opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true

-- No highlight on the actual line
vim.api.nvim_set_hl(0, "CursorLine", { bg = "NONE" })

vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#ff5f00", bold = true }) -- neon orange

-- Relative line numbers (less dominant)
vim.api.nvim_set_hl(0, "LineNr", {
  fg = "#00CC99",
})
