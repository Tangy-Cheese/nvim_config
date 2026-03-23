return{
    {
          "qaptoR-nvim/chocolatier.nvim",
          priority = 1000,
          config = function()
            vim.cmd.colorscheme("chocolatier")
          end,
    }
}
