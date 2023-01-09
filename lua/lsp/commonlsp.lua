local common_lsp = {}

common_lsp.keyAttach = function(bufnr)
  local function buf_set_keymap(mode, lhs, rhs)
    vim.keymap.set(mode, lhs, rhs, { noremap = true, silent = true, buffer = bufnr })
  end
  -- 绑定快捷键
  require("keymapping").sagaMapList(buf_set_keymap)
end

-- 禁用格式化功能，交给专门插件插件处理
common_lsp.disableFormat = function(client)
    client.server_capabilities.documentFormattingProvider = true 
    client.server_capabilities.documentRangeFormattingProvider = true 
end

-- common_lsp.capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())
common_lsp.capabilities = require("cmp_nvim_lsp").default_capabilities()

common_lsp.flags = {
  debounce_text_changes = 150,
}

return common_lsp
