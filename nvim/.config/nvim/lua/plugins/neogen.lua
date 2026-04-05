return {
    "danymat/neogen",
    config = function()
        require('neogen').setup ({
            enabled = true,             --if you want to disable Neogen
            input_after_comment = true, -- (default: true) automatic jump (with insert mode) on inserted annotation
            -- jump_map = "<C-e>"       -- (DROPPED SUPPORT, see [here](#cycle-between-annotations) !) The keymap in order to jump in the annotation fields (in insert mode)
            languages = {
                python = {
                    template = {
                        annotation_convention = "reST",
                    },
                },
            },
        })

        vim.keymap.set("n", "<leader>nf", function()
            require("neogen").generate({ type = "func" })
        end, { desc = "Docstring (function)" })

        vim.keymap.set("n", "<leader>nc", function()
            require("neogen").generate({ type = "class" })
        end, { desc = "Docstring (class)" })

        vim.keymap.set("n", "<leader>nt", function()
            require("neogen").generate({ type = "type" })
        end, { desc = "Docstring (type)" })

        vim.keymap.set("n", "<leader>nn", function()
            require("neogen").generate({ type = "type" })
        end, { desc = "Docstring (type)" })
    end,
}
