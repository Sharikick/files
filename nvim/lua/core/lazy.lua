local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	local repo = "https://github.com/folke/lazy.nvim.git"
	vim.fn.system({ "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath })
end

vim.opt.runtimepath:prepend(lazypath)

require("lazy").setup({
    spec = {
        {import = 'plugins'},
        {import = 'plugins.lsp'},
        {import = 'plugins.colorscheme'},
    },
    change_detection = {
        notify = false,
        enabled = true,
    },
    performance = {
        cache = {enabled = true},
    },
})
