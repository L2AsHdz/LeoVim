local ok, lspconfig = pcall(require, 'lspconfig')
if not ok then
  return
end

require('config.lsp.lsp-installer')
require('config.lsp.handlers').setup()
