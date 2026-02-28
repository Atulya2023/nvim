return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        -- 1. Setup Mason to manage external tools
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = { "lua_ls", "pyright" }, -- Add your servers here
        })

        -- 2. This function runs EVERY time an LSP attaches to a buffer
        vim.api.nvim_create_autocmd("LspAttach", {
            group = vim.api.nvim_create_augroup("UserLspConfig", {}),
            callback = function(ev)
                local opts = { buffer = ev.buf }

                -- Change these to whatever you prefer!
                vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to Definition", buffer = ev.buf })
                vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Show References", buffer = ev.buf })
                vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover Documentation", buffer = ev.buf })
                vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename Symbol", buffer = ev.buf })
                vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Actions", buffer = ev.buf })

                -- Telescope Integration (if you have telescope installed)
                local builtin = require('telescope.builtin')
                vim.keymap.set("n", "<leader>ds", builtin.lsp_document_symbols, { desc = "Document Symbols", buffer = ev.buf })
            end,
        })
    end
}
