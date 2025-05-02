return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		-- Definición de colores inspirados en One Dark
		local colors = {
			blue = "#61afef",
			cyan = "#56b6c2",
			black = "#282c34",
			white = "#abb2bf",
			red = "#e06c75",
			violet = "#c678dd",
			grey = "#5c6370",
		}

		-- Tema personalizado "bubbles" con colores de One Dark
		local bubbles_theme = {
			normal = {
				a = { fg = colors.black, bg = colors.violet },
				b = { fg = colors.white, bg = colors.grey },
				c = { fg = colors.white, bg = colors.black },
			},
			insert = { a = { fg = colors.black, bg = colors.blue } },
			visual = { a = { fg = colors.black, bg = colors.cyan } },
			replace = { a = { fg = colors.black, bg = colors.red } },
			inactive = {
				a = { fg = colors.white, bg = colors.black },
				b = { fg = colors.grey, bg = colors.black },
				c = { fg = colors.black, bg = colors.black },
			},
		}

		-- Configuración de lualine
		require("lualine").setup({
			options = {
				theme = bubbles_theme,
				component_separators = "|",
				section_separators = { left = "", right = "" },
				globalstatus = true,
			},
			sections = {
				lualine_a = {
					{ "mode", separator = { left = "" }, right_padding = 2 },
				},
				lualine_b = { "filename", "branch" },
				lualine_c = { "fileformat" },
				lualine_x = { "encoding", "filetype" },
				lualine_y = { "progress" },
				lualine_z = {
					{ "location", separator = { right = "" }, left_padding = 2 },
				},
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { "filename" },
				lualine_x = { "location" },
				lualine_y = {},
				lualine_z = {},
			},
			tabline = {},
			extensions = {},
		})
	end,
}
