return {
	'grilled-pasta/42-header-python.nvim',
	name = '42pyheader',
	lazy = false,
	opts = {
		default_map = true,
		user = "alkonsta",
		mail = "alkonsta@student.codam.nl"
	},
	config = function(_, opts)
		require('42pyheader').setup(opts)
	end,
}
