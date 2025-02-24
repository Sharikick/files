return {
	"nvim-telescope/telescope.nvim",
    init = function()
        require("util.keymap").Telescope(require("telescope.builtin"))
    end
}
