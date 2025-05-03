-- ~/nvim/lua/slydragonn/plugins/telescope.lua

return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.6",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("telescope").setup({})

		-- set keymaps
		local keymap = vim.keymap

		keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
		keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Fuzzy find recent files" })
		keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Find string in cwd" })
		keymap.set("n", "<leader>fs", "<cmd>Telescope git_status<cr>", { desc = "Find string under cursor in cwd" })
		keymap.set("n", "<leader>fr", "<cmd>Telescope lsp_references<cr>", { desc = "Find references" })
		keymap.set("n", "<leader>fd", "<cmd>Telescope lsp_definitions<cr>", { desc = "Find definitions" })
		keymap.set("n", "<leader>fi", "<cmd>Telescope lsp_implementations<cr>", { desc = "Find implementations" })
		keymap.set("n", "<leader>ft", "<cmd>Telescope lsp_type_definitions<cr>", { desc = "Find type definitions" })
		keymap.set("n", "<leader>fd", "<cmd>Telescope diagnostics<cr>", { desc = "Find diagnostics" })
		keymap.set("n", "<leader>ft", "<cmd>Telescope tags<cr>", { desc = "Find todos" })
		keymap.set("n", "<leader>fc", "<cmd>Telescope git commits<cr>", { desc = "Find todos" })
	end,
}
