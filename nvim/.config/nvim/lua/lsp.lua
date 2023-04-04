require("mason").setup()
require("mason-lspconfig").setup({ensure_installed = {"lua_ls"}})

require("lspconfig").lua_ls.setup {
    settings = {
        Lua = {
            diagnostics = {
                -- stop complaining about `undefined global vim`
                globals = {'vim'}
            }
        }
    }
}
