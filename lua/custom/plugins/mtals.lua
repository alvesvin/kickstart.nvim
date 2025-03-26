local lspconfig = require 'lspconfig'

lspconfig.mtals.setup {
  cmd = { 'go', 'run', '/Users/plugify/Dev/mtalsp/main.go' },
  root_dir = lspconfig.util.root_pattern 'meta.xml',
  on_attach = function(client, bufnr)
    vim.cmd 'LspLog 1'
  end,
}
