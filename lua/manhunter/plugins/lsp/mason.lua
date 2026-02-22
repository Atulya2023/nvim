return {
    "williamboman/mason-lspconfig.nvim",
    -- config = function()
        --   require("mason").setup()
        -- end,
        opts = {
            ensure_installed = {
                "lua_ls",
                "basedpyright",
                -- "hdl_checker@0.6.4",
                "verible",
                "clangd",
            },
        },
        dependencies = {
            {
                "mason-org/mason.nvim",
                opts = {
                    ui = {
                        icons = {
                            package_installed = "✓",
                            package_pending = "➜",
                            package_uninstalled = "✗"
                        }
                    }
                }
            }
        }
    }
