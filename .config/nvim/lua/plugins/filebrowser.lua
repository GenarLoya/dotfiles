return {
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
}
