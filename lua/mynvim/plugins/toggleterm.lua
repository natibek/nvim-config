return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			size = 10,
			open_mapping = [[<F7>]],
			shading_factor = 2,
			direction = "float",
			start_in_insert = true,
			float_opts = {
				border = "double",
			},
			on_open = function(term)
				vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", { noremap = true, silent = true })
			end,
		})
	end,
}
