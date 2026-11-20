return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
	  local function on_attach(bufnr)
		  local api = require("nvim-tree.api")

		  api.config.mappings.default_on_attach(bufnr)

		  vim.keymap.set("n", "<C-v>", api.node.open.vertical, {
			  buffer = bufnr,
			  desc = "Open in vertical split",
		  })

		  vim.keymap.set("n", "<C-x>", api.node.open.horizontal, {
			  buffer = bufnr,
			  desc = "Open in horizontal split"
		  })
	  end

	  require("nvim-tree").setup {
		  actions = {
			  open_file = {
				  quit_on_open = false,
			  },
		  },
	}
  end,
}
