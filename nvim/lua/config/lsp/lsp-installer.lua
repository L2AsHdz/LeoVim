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

-- Cambiar esto a un archivo aparte
local enhance_server_opts = {
    ['html'] = function(opts)
        opts.init_options = { provideFormatter = false }
    end,
    --     ["emmet_ls"] = function (opts)
    --         opts.filetypes = { "html", "css", "php" }
    --     end
}

for _, server in pairs(servers) do
    local opts = {
        on_attach = handlers.on_attach,
        capabilities = handlers.capabilities,
    }

    local has_custom_opts, server_custom_opts = pcall(require, 'config.lsp.settings.' .. server)
    if has_custom_opts then
        opts = vim.tbl_deep_extend('force', server_custom_opts, opts)
    end

    if enhance_server_opts[server] then
        enhance_server_opts[server](opts)
    end

    lspconfig[server].setup(opts)
end
