local M = {}
local cmp_nvim_lsp = require("cmp_nvim_lsp")

M.Capabilities = cmp_nvim_lsp.default_capabilities()

function M.OnAttach(client, bufnr)
    require("util.keymap").LspOnAttach(bufnr)
end

return M
