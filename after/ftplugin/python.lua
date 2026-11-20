vim.opt_local.shiftwidth = 4
vim.opt_local.tabstop = 4
vim.opt_local.textwidth = 80
vim.cmd("set colorcolumn=80")

vim.lsp.config('basedpyright', {
	cmd = { 'basedpyright-langserver', '--stdio' },
	filetypes = { 'python' },
	root_markers = {
		'pyproject.toml',
		'setup.py',
		'setup.cfg',
		'requirements.txt',
		'Pipfile',
		'pyrightconfig.json',
		'.git',
	},
	settings = {
		basedpyright = {
			analysis = {
				autoimportcompletions = false,
				autoSearchPaths = true,
				useLibraryCodeForTypes = true,
				diagnosticMode = 'openFilesOnly',
				diagnosticSeverityOverrides = {
					reportAny = false,
					reportArgumentType = false,
					reportImplicitOverride = false,
				},
			},
		},
	},
})

vim.keymap.set("n", "<leader>pr", function()
    vim.cmd("write")
    vim.cmd("belowright split | terminal python " .. vim.fn.shellescape(vim.fn.expand("%:p")))
end, { buffer = true, desc = "Run Python file" })

vim.keymap.set("n", "<leader>pi", function()
    vim.cmd("write")
    vim.cmd("belowright split | terminal python -i " .. vim.fn.shellescape(vim.fn.expand("%:p")))
end, { buffer = true, desc = "Run Python file interactively" })

vim.keymap.set("n", "<leader>pm", function()
    vim.cmd("write")

	local file = vim.fn.expand("%:p")
	local root = vim.fn.getcwd()
	local relative = file:sub(#root + 2)
	local module = relative:gsub("%.py$", ""):gsub("/", ".")

    vim.cmd("belowright split")
	vim.cmd("terminal cd " .. vim.fn.shellescape(root)
		.. " && python -i -m " .. vim.fn.shellescape(module))
end, { buffer = true, desc = "Run Python module interactively" })

vim.lsp.enable('basedpyright')
