-- ~/nvim/lua/slydragonn/maps.lua

vim.g.mapleader = " "

local function map(mode, lhs, rhs, opt)
	-- slice opt with { silent = true }
	opt = opt or {}
	opt.silent = true
	vim.keymap.set(mode, lhs, rhs, opt)
end

-- Save
map("n", "<leader>w", "<CMD>update<CR>")

-- Quit
map("n", "<leader>q", "<CMD>q<CR>")

-- Exit insert mode
map("i", "jk", "<ESC>")

-- NeoTree
-- map("n", "<leader>e", "<CMD>NvimTreeToggle<CR>")
-- map("n", "<leader>r", "<CMD>NvimTreeRefresh<CR>")

-- New Windows
map("n", "<leader>o", "<CMD>vsplit<CR>")
map("n", "<leader>p", "<CMD>split<CR>")

-- Window Navigation with arrows
map("n", "<C-Left>", "<C-w>h")
map("n", "<C-Right>", "<C-w>l")
map("n", "<C-Up>", "<C-w>k")
map("n", "<C-Down>", "<C-w>j")

-- Telescope

map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Fuzzy find recent files" })
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Find string in cwd" })
map("n", "<leader>fs", "<cmd>Telescope git_status<cr>", { desc = "Find string under cursor in cwd" })
map("n", "<leader>fr", "<cmd>Telescope lsp_references<cr>", { desc = "Find references" })
map("n", "<leader>fd", "<cmd>Telescope lsp_definitions<cr>", { desc = "Find definitions" })
map("n", "<leader>fi", "<cmd>Telescope lsp_implementations<cr>", { desc = "Find implementations" })
map("n", "<leader>ft", "<cmd>Telescope lsp_type_definitions<cr>", { desc = "Find type definitions" })
map("n", "<leader>ft", "<cmd>Telescope tags<cr>", { desc = "Find todos" })
map("n", "<leader>fc", "<cmd>Telescope git commits<cr>", { desc = "Find todos" })
map("n", "<space>fs", function()
	require("telescope").extensions.file_browser.file_browser()
end)

-- Database
map("n", "<leader>zu", "<CMD>DBUIToggle<CR>")
