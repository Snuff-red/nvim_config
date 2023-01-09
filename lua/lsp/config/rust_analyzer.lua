local common = require('lsp.commonlsp')
require 'lspconfig'.rust_analyzer.setup {
    capabilities = common.capabilities,
    flags = common.flags,
    on_attach = function(client, bufnr)
        common.disableFormat(client)
        common.keyAttach(bufnr)
    end,
}
