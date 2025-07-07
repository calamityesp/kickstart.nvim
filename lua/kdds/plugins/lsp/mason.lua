-- ***********************************************************************************************
-- *** williamboman/mason.nvim  --lsp language server plugin manager (best there is)
-- ***********************************************************************************************
return {
    "mason-org/mason.nvim",
    opts = {
        ui = {
            icons = {
                package_installed = "✓",
                package_pending = "➜",
                package_uninstalled = "✗",
            },
        },
    },
}
