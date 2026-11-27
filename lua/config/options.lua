vim.opt.number = true -- numbers the lines in your editor
vim.opt.cursorline = true -- shows which line your cursor is currently on
vim.opt.relativenumber = true -- numbers the lines relative to the line you are currently on
vim.opt.shiftwidth = 4 -- changes tab spacing to 4
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.opt.swapfile = false
vim.diagnostic.config({ virtual_text = true })
vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.shell = "/usr/bin/fish"
vim.opt.shellcmdflag = "-c"
vim.opt.shellquote = ""
vim.opt.shellxquote = ""
