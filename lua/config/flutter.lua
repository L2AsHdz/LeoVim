local handlers = require('config.lsp.handlers');

require("flutter-tools").setup{
    lsp ={
        on_attach = handlers.on_attach,
        capabilities = handlers.capabilities
    }
}
