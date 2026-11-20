return { 
	"nvim-treesitter/nvim-treesitter", 
	tag = "v0.10.0", 
	lazy = false, 
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"c",
				"lua",
				"vim",
				"vimdoc",
				"query"
			},
			highlight = {
				enable = true,
			},
		})
	end,
}
