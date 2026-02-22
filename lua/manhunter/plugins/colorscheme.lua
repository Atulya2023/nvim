return {
    {
        "marko-cerovac/material.nvim",
        config = function()
            vim.g.material_style = "deep ocean"
        end,
    },
    {
        "olimorris/onedarkpro.nvim",
        config = function()
            require("onedarkpro").setup({
                colors = {
                    dark = { bg = "#202020" }, -- yellow
                },
                highlights = {
                    CursorLine = { bg = "#333333" },
                }
            })
        end,
    },
    {
        "vague-theme/vague.nvim",
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other plugins
        config = function()
            -- NOTE: you do not need to call setup if you don't want to.
            require("vague").setup({
                -- optional configuration here
            })
            -- vim.cmd("colorscheme vague")
        end
    },
}
