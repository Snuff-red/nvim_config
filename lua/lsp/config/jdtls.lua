local common = require('lsp.commonlsp')
require 'lspconfig'.jdtls.setup {
    capabilities = common.capabilities,
    flags = common.flags,
    on_attach = function(client, bufnr)
        common.disableFormat(client)
        common.keyAttach(bufnr)
    end,
}
