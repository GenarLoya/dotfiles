return {
	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").load_extension("file_browser")

			vim.api.nvim_create_autocmd("VimEnter", {
				callback = function()
					local arg = vim.fn.argv()[1]
					if arg and vim.fn.isdirectory(arg) == 1 then
						require("telescope").extensions.file_browser.file_browser()
					end
				end,
			})
		end,
	},
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("nvim-tree").setup({
				view = {
					float = {
						enable = true,
						open_win_config = function()
							local screen_h = vim.o.lines
							return {
								relative = "editor",
								width = 50,
								height = screen_h,
								row = 0,
								col = 0,
							}
						end,
					},
					preserve_window_proportions = true,
					signcolumn = "yes",
				},
				renderer = {
					icons = {
						show = {
							file = true,
							folder = true,
							folder_arrow = true,
							git = true,
						},
					},
				},
				update_focused_file = {
					enable = true,
					update_cwd = true,
				},
				filters = {
					dotfiles = false,
				},
			})

			-- Opcional: atajo para abrir/cerrar el árbol
			vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
		end,
	},
}
