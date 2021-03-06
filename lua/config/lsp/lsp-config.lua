local ok_lspconfig, lspconfig = pcall(require, 'lspconfig')
local status_ok, lsp_installer = pcall(require, 'nvim-lsp-installer')
local ok, handlers = pcall(require, 'config.lsp.handlers')
if not status_ok then
    return
end
if not ok then
    return
end
if not ok_lspconfig then
    return
end

local servers = {
    'angularls',
    'bashls',
    'clangd',
    'cssls',
    'dockerls',
    'emmet_ls',
    'html',
    'intelephense',
    'jdtls',
    'jsonls',
    'pyright',
    'sumneko_lua',
    'tsserver',
    'vimls',
    'yamlls',
}

lsp_installer.setup({
    ensure_installed = servers,
    ui = {
        icons = {
            server_installed = '✓',
            server_pending = '➜',
            server_uninstalled = '✗',
        },
    },
})

for _, server in pairs(servers) do
    local opts
    opts = {
        on_attach = handlers.on_attach,
        capabilities = handlers.capabilities,
    }

    local has_custom_opts, server_custom_opts = pcall(require, 'config.lsp.settings.' .. server)
    if has_custom_opts then
        opts = vim.tbl_deep_extend('force', opts, server_custom_opts)
    end

    lspconfig[server].setup(opts)
end
