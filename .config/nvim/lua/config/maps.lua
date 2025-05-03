-- ~/nvim/lua/slydragonn/maps.lua

vim.g.mapleader = " "

local function map(mode, lhs, rhs)
	vim.keymap.set(mode, lhs, rhs, { silent = true })
end

-- Save
map("n", "<leader>w", "<CMD>update<CR>")

-- Quit
map("n", "<leader>q", "<CMD>q<CR>")

-- Exit insert mode
map("i", "jk", "<ESC>")

-- NeoTree
map("n", "<leader>e", "<CMD>NvimTreeToggle<CR>")
map("n", "<leader>r", "<CMD>NvimTreeRefresh<CR>")

-- New Windows
map("n", "<leader>o", "<CMD>vsplit<CR>")
map("n", "<leader>p", "<CMD>split<CR>")

-- Window Navigation with arrows
map("n", "<C-Left>", "<C-w>h")
map("n", "<C-Right>", "<C-w>l")
map("n", "<C-Up>", "<C-w>k")
map("n", "<C-Down>", "<C-w>j")
