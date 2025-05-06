return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("dashboard").setup({
			theme = "doom",
			config = {
				header = {
					"                                                                 ",
					"    ,gg,                       ,gggggggg,                        ",
					"   i8::8i                     d8P::::::Y8b,                      ",
					"    8,,8'                     88,_a      8b                      ",
					"     Y88aaad8                  Y8P:      88                      ",
					"     d8::::Y8,                           88                      ",
					"    ,8P     8b ,ggg,    ,ggg,,ggg,      d8'    ,ggg,    ,gggggg, ",
					"    dP      Y8i8: :8i  ,8: :8P: :8,  _,d8'    i8: :8i   dP::::8I ",
					"_ ,dP'      I8I8, ,8I  I8   8I   8Id8888ba,   I8, ,8I  ,8'    8I ",
					":888,,_____,dP YbadP' ,dP   8I   Yb,   :Y88b,  YbadP' ,dP     Y8,",
					"a8P:Y888888P:888P:Y8888P'   8I    Y8   ,d8888888P:Y8888P       Y8",
					"                                     ,8P:  88                    ",
					"                                    d8'    88                    ",
					"                                   d8'    ,88                    ",
					"                                   88     d8'                    ",
					"                                    Y8,8P,P                     ",
					"                                                                 ",
				},
				center = {
					{ icon = " ", desc = "New File", action = "enew", key = "n" },
					{ icon = " ", desc = "Recently opened files", action = "Telescope oldfiles", key = "r" },
					{ icon = " ", desc = "Browse files", action = "Telescope find_files", key = "f" },
					{ icon = " ", desc = "Edit config", action = "edit ~/.config/nvim/init.lua", key = "c" },
					{ icon = " ", desc = "Quit Neovim", action = "qa", key = "q" },
				},
				footer = { " Happy coding!" },
			},
		})
	end,
}
