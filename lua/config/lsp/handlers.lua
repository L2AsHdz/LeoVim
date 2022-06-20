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

local function lsp_highlight_document(client)
    local ok, illuminate = pcall(require, 'illuminate')
    if not ok then
        return
    end
    illuminate.on_attach(client)
end

local function lsp_nvim_navic(client, bufnr)
    local ok, navic = pcall(require, 'nvim-navic')
    if not ok then
        return
    end
    navic.attach(client, bufnr)
end

local bufMap = require('utils.core').bufmap

local function lsp_keymaps(bufnr)
    bufMap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>')
    bufMap(bufnr, 'n', 'gd', '<cmd>Trouble lsp_definitions<CR>')
    bufMap(bufnr, 'n', 'L', '<cmd>lua vim.lsp.buf.hover()<CR>')
    bufMap(bufnr, 'n', 'gi', '<cmd>Trouble lsp_implementations<CR>')
    bufMap(bufnr, 'n', '<A-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>')
    bufMap(bufnr, 'n', 'gr', '<cmd>Trouble lsp_references<CR>')
    bufMap(bufnr, 'n', '[d', '<cmd>lua vim.diagnostic.goto_prev({ border = "rounded" })<CR>')
    bufMap(bufnr, 'n', ']d', '<cmd>lua vim.diagnostic.goto_next({ border = "rounded" })<CR>')
    bufMap(bufnr, 'n', '<leader>cf', '<cmd>lua vim.lsp.buf.formatting()<CR>')
    bufMap(bufnr, 'n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>')
    bufMap(bufnr, 'n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>')
    bufMap(bufnr, 'v', 'ff', ":'<,'>lua vim.lsp.buf.range_code_action()<CR>")
    bufMap(bufnr, 'n', '<leader>cd', '<cmd>lua vim.diagnostic.open_float()<CR>')
    bufMap(bufnr, 'n', '<leader>cw', '<cmd>Trouble workspace_diagnostics<CR>')
    bufMap(bufnr, 'n', '<leader>cD', '<cmd>Trouble document_diagnostics<CR>')
    -- vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>q", "<cmd>lua vim.diagnostic.setloclist()<CR>")
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
    if client.name == 'tsserver' or client.name == 'sumneko_lua' then
        client.resolved_capabilities.document_formatting = false
    end
    if client.name == 'dartls' then
        flutter_keymaps(bufnr)
    end
    lsp_keymaps(bufnr)
    lsp_highlight_document(client)
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
