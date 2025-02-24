return {
	"neovim/nvim-lspconfig",
	config = function()
		local lspconfig = require("lspconfig")
        local lsp = require("util.lsp")
		local on_attach = lsp.OnAttach
        local capabilities = lsp.Capabilities

        lspconfig.cssls.setup({
			capabilities = capabilities,
		})

		lspconfig.lua_ls.setup({
            capabilities = capabilities,
            on_attach = on_attach,
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
				},
			},
		})

        lspconfig.intelephense.setup({
            capabilities = capabilities,
            on_attach = on_attach,
            filetypes = { "php" },
            root_dir = function()
				return vim.loop.cwd()
			end,
            settings = {
                intelephense = {
                    files = {
                        maxSize = 5000000, -- Максимальный размер файла (в байтах)
                    },
                },
            },
			on_init = function(client)
				client.server_capabilities.documentFormattingProvider = false
			end,
        })
	end,
}
