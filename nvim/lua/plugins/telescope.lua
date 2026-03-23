return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },

    config = function()
      local builtin = require("telescope.builtin")

      -- find files in current Oil directory (or file directory fallback)
      vim.keymap.set("n", "<leader>ff", function()
        local ok, oil = pcall(require, "oil")
        local dir = ok and oil.get_current_dir() or vim.fn.expand("%:p:h")

        builtin.find_files({ cwd = dir })
      end, { desc = "Find files (local)" })

      -- find files everywhere (project root)
      vim.keymap.set("n", "<leader>fe", builtin.find_files, { desc = "Find files (everywhere)" })

      -- search text
      vim.keymap.set("n", "<leader>fg", function()
        local ok, oil = pcall(require, "oil")
        local dir = ok and oil.get_current_dir() or vim.loop.cwd()

      builtin.live_grep({ cwd = dir })
      end, { desc = "Search in files" })

      -- search open buffers
      vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find buffers" })
    end,
  },
}
