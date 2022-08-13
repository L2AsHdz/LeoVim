local ok_lspconfig, lspconfig = pcall(require, 'lspconfig')
local mason_ok, mason = pcall(require, 'mason')
local mason_lspconf_ok, mason_lspconfig = pcall(require, 'mason-lspconfig')
local ok, handlers = pcall(require, 'config.lsp.handlers')
if not mason_ok or not mason_lspconf_ok or not ok_lspconfig or not ok then
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

local others = {
    'eslint_d',
    'prettierd',
    'sqlfluff',
    'stylua',
    'vint'
}

mason.setup({
    ui = {
        border = 'single',
        icons = {
            server_installed = '✓',
            server_pending = '➜',
            server_uninstalled = '✗',
        },
    },
})

mason_lspconfig.setup({
    ensure_installed = others,
    automatic_installation = true
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
