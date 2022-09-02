local M = {}

M.setup = function()
    local signs = {
        { name = 'DiagnosticSignError', text = '' },
        { name = 'DiagnosticSignWarn', text = '' },
        { name = 'DiagnosticSignHint', text = '' },
        { name = 'DiagnosticSignInfo', text = '' },
    }
    --    﫠      
    for _, sign in ipairs(signs) do
        vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = '' })
    end

    local config = {
        -- disable virtual text
        virtual_text = false,
        -- show signs
        signs = {
            active = signs,
        },
        update_in_insert = true,
        underline = true,
        severity_sort = true,
        float = {
            focusable = false,
            style = 'minimal',
            border = 'rounded',
            source = 'always',
            header = '',
            prefix = '',
        },
    }

    vim.diagnostic.config(config)

    vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(vim.lsp.handlers.hover, {
        border = 'rounded',
    })

    vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(vim.lsp.handlers.signature_help, {
        border = 'rounded',
    })
end

local function lsp_nvim_navic(client, bufnr)
    local ok, navic = pcall(require, 'nvim-navic')
    if not ok then
        return
    end
    navic.attach(client, bufnr)
end

local lsp_formatting = function(bufnr)
    vim.lsp.buf.format({
        async = true,
        filter = function(client)
            return client.name == 'null-ls'
        end,
        bufnr = bufnr,
    })
end

local bufMap = require('utils.core').bufmap
local map = require('utils.core').map

local function lsp_keymaps(bufnr)
    local opts = { buffer = bufnr }
    map('n', 'gD', vim.lsp.buf.declaration, opts)
    map('n', 'gd', vim.lsp.buf.definition, opts)
    map('n', 'L', vim.lsp.buf.hover, opts)
    bufMap(bufnr, 'n', 'gi', ':Trouble lsp_implementations<CR>')
    map('n', '<A-k>', vim.lsp.buf.signature_help, opts)
    bufMap(bufnr, 'n', 'gr', ':Trouble lsp_references<CR>')
    map('n', '[d', vim.diagnostic.goto_prev, opts)
    map('n', ']d', vim.diagnostic.goto_next, opts)
    map('n', '<leader>cf', function() lsp_formatting(bufnr) end, opts)
    map('n', '<leader>rn', vim.lsp.buf.rename, opts)
    map('n', '<leader>ca', vim.lsp.buf.code_action, opts)
    map('v', 'ff', vim.lsp.buf.code_action, opts)
    bufMap(bufnr, 'v', 'fc', ":'<,'>lua vim.lsp.buf.range_formatting()<CR>")
    map('n', '<leader>cd', vim.diagnostic.open_float, opts)
    bufMap(bufnr, 'n', '<leader>cw', ':Trouble workspace_diagnostics<CR>')
    bufMap(bufnr, 'n', '<leader>cD', ':Trouble document_diagnostics<CR>')
end

local function flutter_keymaps(bufnr)
    bufMap(bufnr, 'n', '<leader>fc', ':Telescope flutter commands<CR>')
    bufMap(bufnr, 'n', '<leader>fr', ':FlutterRun<CR>')
    bufMap(bufnr, 'n', '<leader>fd', ':FlutterDevices<CR>')
    bufMap(bufnr, 'n', '<leader>fe', ':FlutterEmulators<CR>')
    bufMap(bufnr, 'n', '<leader>fR', ':FlutterReload<CR>')
    bufMap(bufnr, 'n', '<leader>ft', ':FlutterRestart<CR>')
    bufMap(bufnr, 'n', '<leader>fq', ':FlutterQuit<CR>')
    bufMap(bufnr, 'n', '<leader>fl', ':FlutterOutlineToggle<CR>')
end

M.on_attach = function(client, bufnr)
    if client.name == 'dartls' then
        flutter_keymaps(bufnr)
    end
    lsp_keymaps(bufnr)
    lsp_nvim_navic(client, bufnr)
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.offsetEncoding = { 'utf-16' }

local status_ok, cmp_nvim_lsp = pcall(require, 'cmp_nvim_lsp')
if not status_ok then
    return
end

M.capabilities = cmp_nvim_lsp.update_capabilities(capabilities)

return M
