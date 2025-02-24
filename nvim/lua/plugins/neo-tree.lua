local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

return {
	"nvim-neo-tree/neo-tree.nvim",
    opts = {
        close_if_last_window = true,
		filesystem = {
			filtered_items = {
				hide_dotfiles = false,
			},
		},
		window = {
			position = "left",
			width = 30,
			mappings = {
				["<space>"] = false,
				["<Tab>"] = "open",
				["a"] = {
					"add",
					config = {
						show_path = "none",
					},
				},
				["A"] = "add_directory",
				["d"] = "delete",
				["r"] = "rename",
				["y"] = "copy_to_clipboard",
				["x"] = "cut_to_clipboard",
				["p"] = "paste_from_clipboard",
			},
		},
    },
    init = function()
        require("util.keymap").NeoTree()

		vim.fn.sign_define("DiagnosticSignError", { text = " ", texthl = "DiagnosticSignError" })
		vim.fn.sign_define("DiagnosticSignWarn", { text = " ", texthl = "DiagnosticSignWarn" })
		vim.fn.sign_define("DiagnosticSignInfo", { text = " ", texthl = "DiagnosticSignInfo" })
		vim.fn.sign_define("DiagnosticSignHint", { text = "󰌵", texthl = "DiagnosticSignHint" })

    end,
	config = function(_, opts)
		require("neo-tree").setup(opts)
	end,
}
