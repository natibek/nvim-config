return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			size = function(term)
				if term.direction == "horizontal" then
					return 20
				elseif term.direction == "vertical" then
					return vim.o.columns * 0.6
				else
					return 20
				end
			end,
			open_mapping = [[<F7>]],
			shading_factor = 2,
			direction = "horizontal", --"vertical", "float", "horizontal", "tab"
			start_in_insert = true,

			float_opts = {
				border = "double",
			},

			autoscroll = true,
			winbar = {
				enabled = false,
				name_formatter = function(term) --  term: Terminal
					return term.name
				end,
			},
			on_open = function(term)
				vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", { noremap = true, silent = true })
			end,
		})
	end,
}
