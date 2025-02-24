return {
	"hrsh7th/nvim-cmp",
	config = function()
		local cmp = require("cmp")
        local lspkind = require("lspkind")

		cmp.setup({
            formatting = {
                fields = { "abbr", "kind", "menu" },
                format = function(entry, vim_item)
                    -- Добавляем иконки через lspkind
                    vim_item.kind = lspkind.symbolic(vim_item.kind)

                    -- Настройка поля menu
                    vim_item.menu = ({
                        nvim_lsp = "[LSP]",
                        buffer = "[Buffer]",
                        path = "[Path]",
                        vsnip = "[Snippet]",
                    })[entry.source.name] or ""

                    return vim_item
                end,
            },
			mapping = {
				["<C-n>"] = cmp.mapping.select_next_item(), -- Перейти к следующему элементу
				["<C-p>"] = cmp.mapping.select_prev_item(), -- Перейти к предыдущему элементу
				["<CR>"] = cmp.mapping.confirm({ select = true }), -- Подтвердить выбор
			},
			sources = {
				{ name = "nvim_lsp" }, -- Источник LSP
				{ name = "buffer" }, -- Источник буфера
			},
            window = {
                completion = cmp.config.window.bordered(),
                documentation = cmp.config.window.bordered(),
            },
		})
	end,
}
