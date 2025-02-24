return {
	"nvim-treesitter/nvim-treesitter",
    opts = {
    	indent = {
			enable = true,
			disable = {},
		},

		ensure_installed = {
			"dockerfile",
			"go",
			"json",
			"lua",
			"toml",
			"yaml",
			"python",
			"sql",
			"java",
			"xml",
			"c_sharp",
			"php",
			"html",
			"css",
		},

        -- Синхронная установка парсеров
		sync_install = true,

        -- Автоматическое обновление парсеров
        update_strategy = {
            enable = true,
            auto_update = true,
        },

        -- Подсветка
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = false,
		},

        textobjects = {
            select = {
                enable = true,
                keymaps = {
                    ["af"] = "@function.outer",
                    ["if"] = "@function.inner",
                    ["ac"] = "@conditional.outer",
                    ["ic"] = "@conditional.inner",
                    ["ap"] = "@parameter.outer",
                    ["ip"] = "@parameter.inner",
                    ["ak"] = "@class.outer",
                    ["ik"] = "@class.inner",
                    ["al"] = "@loop.outer",
                    ["il"] = "@loop.inner",
                },
            },
            move = {
                enable = true,
                set_jumps = true,
                goto_next_start = {
                    ["]f"] = "@function.outer",
                    ["]c"] = "@class.outer",
                },
                goto_previous_start = {
                    ["[f"] = "@function.outer",
                    ["[c"] = "@class.outer",
                },
            },
        },
    },
	config = function(_, opts)
		require("nvim-treesitter.configs").setup(opts)
	end,
}
