-- vim transparent
return {
	"xiyaowong/transparent.nvim",
	config = function()
		require("transparent").clear_prefix("NeoTreeNormal")
		require("transparent").clear_prefix("NormalFloat")
	end,
}
