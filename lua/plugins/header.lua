-- ~/.config/nvim/lua/plugins/header.lua

return {
	{
	"42paris/42header",
		config = function()
			vim.g.user42 = "lduflot"
			vim.g.mail42 = "marvin@42.fr"
		end,
	}
}

