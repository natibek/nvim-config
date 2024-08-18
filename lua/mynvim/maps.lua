vim.g.mapleader = " "

local function map(mode, lhs, rhs)
	vim.keymap.set(mode, lhs, rhs, { silent = true })
end

-- No highlight
map("n", "<leader>n", "<CMD>noh<CR>")
-- Save
map("n", "<leader>w", "<CMD>update<CR>")

-- Quit
map("n", "<leader>q", "<CMD>q<CR>")

-- Move right and left in Insert mode
map("i", "jl", "<Right>")
map("i", "jk", "<Left>")
map("i", "<C-d>", "<Esc>dbxi")

-- NeoTree
map("n", "<leader>e", "<CMD>Neotree toggle<CR>")
map("n", "<leader>r", "<CMD>Neotree focus<CR>")

-- New Windows
map("n", "<leader>o", "<CMD>vsplit<CR>")
map("n", "<leader>p", "<CMD>split<CR>")

-- Window Navigation
map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-j>", "<C-w>j")

-- Resize Windows
map("n", "<C-Left>", "<C-w><")
map("n", "<C-Right>", "<C-w>>")
map("n", "<C-Up>", "<C-w>+")
map("n", "<C-Down>", "<C-w>-")

-- Toggle Terminal
map("t", "<leader><esc>", [[<C-\><C-n>]])
