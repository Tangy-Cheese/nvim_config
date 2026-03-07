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

-- Very dark purple statusline
vim.api.nvim_set_hl(0, "StatusLine", { bg = "#1a0033", fg = "#cdd6f4" })
vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "#120024", fg = "#6c7086" })

-- get the lualine / statusline background
local statusline = vim.api.nvim_get_hl(0, { name = "StatusLine" })

-- No highlight on the actual line
vim.api.nvim_set_hl(0, "CursorLine", { bg = "NONE" })

vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#ff5f00", bold = true, bg = statusline.bg }) -- neon orange

-- Relative line numbers (less dominant)
vim.api.nvim_set_hl(0, "LineNr", {
  fg = "#00CC99",
  bg = statusline.bg
})
