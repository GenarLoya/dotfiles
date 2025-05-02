return {
	"nvim-tree/nvim-tree.lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("nvim-tree").setup({
			hijack_cursor = true,
			update_focused_file = {
				enable = true,
				update_cwd = true,
			},
			view = {
				float = {
					enable = true,
					open_win_config = function()
						local screen_w = vim.o.columns
						local screen_h = vim.o.lines
						--  convertir to int
						local win_w = math.floor(screen_w * 0.2)
						local win_h = math.floor(screen_h)
						return {
							relative = "editor",
							width = win_w,
							height = win_h,
							row = 0,
							col = 0,
						}
					end,
				},
				width = 35,
				preserve_window_proportions = true,
			},
			renderer = {
				highlight_git = true,
				icons = {
					webdev_colors = true,
					git_placement = "after",
					padding = " ",
					symlink_arrow = " ➛ ",
					show = {
						file = true,
						folder = true,
						folder_arrow = true,
						git = true,
					},
					glyphs = {
						default = "󰈚",
						symlink = "",
						folder = {
							default = "",
							open = "",
							empty = "",
							empty_open = "",
							symlink = "",
							symlink_open = "",
							arrow_open = "",
							arrow_closed = "",
						},
						git = {
							unstaged = "",
							staged = "S",
							unmerged = "",
							renamed = "➜",
							deleted = "",
							untracked = "★",
							ignored = "◌",
						},
					},
				},
			},
			git = {
				enable = true,
				ignore = false,
			},
		})

		-- Auto abrir si entras a una carpeta (como `nvim .`)
		vim.api.nvim_create_autocmd("VimEnter", {
			callback = function()
				local arg = vim.fn.argv()[1]
				if arg and vim.fn.isdirectory(arg) == 1 then
					require("nvim-tree.api").tree.open()
				end
			end,
		})
	end,
}
