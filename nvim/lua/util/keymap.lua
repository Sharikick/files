local M = {}

local function map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.keymap.set(mode, lhs, rhs, options)
end

function M.General()
    map("i", "jj", "<Esc>", { desc = "Выйти из режима 'Insert'" })
end

function M.NeoTree()
	map("n", "<leader>e", ":Neotree<CR>", { desc = "Открыть дерево файлов" })
	map("n", "<leader>w", ":Neotree close<CR>", { desc = "Закрыть дерево файлов" })
end

function M.Telescope(builtin)
	map("n", "<leader>ff", builtin.find_files, { desc = "Навигация по файлам" })
    map("n", "<leader>fg", builtin.live_grep, { desc = "Навигация по словам" })
end

function M.LspOnAttach(bufnr)
    local opts = { buffer = bufnr }

	map("n", "gD", vim.lsp.buf.declaration, opts)
	map("n", "gd", vim.lsp.buf.definition, opts)
	map("n", "K", vim.lsp.buf.hover, opts)
	map("n", "gi", vim.lsp.buf.implementation, opts)
end

return M
