local status_ok, lsp_installer = pcall(require, 'nvim-lsp-installer')
if not status_ok then
    return
end

lsp_installer.settings({
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
})

-- Cambiar esto a un archivo aparte

local enhance_server_opts = {
    ["html"] = function (opts)
        opts.init_options = { provideFormatter = false }
    end,
--     ["emmet_ls"] = function (opts)
--         opts.filetypes = { "html", "css", "php" }
--     end
}

-- Register a handler that will be called for all installed servers.
-- Alternatively, you may also register handlers on specific server instances instead (see example below).
lsp_installer.on_server_ready(function(server)
    local opts = {
        on_attach = require('config.lsp.handlers').on_attach,
        capabilities = require('config.lsp.handlers').capabilities
    }

    if server.name == "jsonls" then
	 	local jsonls_opts = require("config.lsp.settings.jsonls")
	 	opts = vim.tbl_deep_extend("force", jsonls_opts, opts)
	end

	if server.name == "sumneko_lua" then
	 	local sumneko_opts = require("config.lsp.settings.sumneko_lua")
	 	opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
	end

    if enhance_server_opts[server.name] then
        enhance_server_opts[server.name](opts)
    end

    -- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
    server:setup(opts)
end)
