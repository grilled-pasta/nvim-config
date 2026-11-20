local map = vim.keymap.set
vim.g.mapleader = ' ' -- this maps the leader key to the spacebar

map('n', "<leader>cd", ":NvimTreeToggle<CR>") -- "n" here applies the mapping in normal mode, "<leader>cd" is the key combination and "vim.cmd.Ex" open the file explorer

-- Quick esc
map("i", "<C-j>", "<Esc>", opts)
map("t", "<C-j>", "<C-\\><C-N>", opts)

-- Nav windows
map("n", "<leader>h", "<C-w>h", opts)
map("n", "<leader>l", "<C-w>l", opts)
map("n", "<leader>k", "<C-w>k", opts)
map("n", "<leader>j", "<C-w>j", opts)
map("n", "<leader>v", ":vsplit<CR>", opts)
map("n", "<leader>x", ":close<CR>", opts)

-- Nav tabs
map("n", "<leader><tab>", ":tabedit<CR>", opts)
map("n", "<leader>w", ":tabclose<CR>", opts)
map("n", "<tab>", ":tabnext<CR>", opts)
map("n", "<S-tab>", ":tabprev<CR>", opts)

-- Nav terminal
map("n", "<leader>ft", ":ToggleTerm direction=float<CR>", opts)
map("n", "<leader>t", ":ToggleTerm direction=horizontal<CR>", opts)
map("t", "<C-x>", vim.cmd.ToggleTerm)

--LSP
map('n', '<leader>dd', '<cmd>Telescope diagnostics<CR>', { noremap = true, silent = true })
