return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = {
      options = {
        theme = "auto",
        globalstatus = false,

        section_separators = { left = "", right = "" },
        component_separators = { left = "", right = "" },
      },

      sections = {
        lualine_a = {
          {
            "mode",
            color = { bg = "#ff5fd7", fg = "#1e1f28" },
          },
        },

        lualine_b = { "branch", "diff" },

        lualine_c = {
          {
            "filename",
            path = 1,
          },
        },

        lualine_x = { "diagnostics", "filetype" },

        lualine_y = { "progress" },

        lualine_z = {
          {
            "location",
            color = { bg = "#ff5fd7", fg = "#1e1f28" },
          },
        },
      },

      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { { "filename", path = 1 } },
        lualine_x = { "location" },
        lualine_y = {},
        lualine_z = {},
      },
    },
  },
}
