return {
	"romgrk/barbar.nvim",
	dependencies = {
		"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
		"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
	},

	config = function()
		require("barbar").setup({

			--	vim.g.barbar_auto_setup = false,
			-- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
			highlights = {
				background = {
					guibg = "#000000",
				},
				buffer_visible = {
					guifg = "#abb2bf", -- Foreground color of visible buffers
				},
			},
			animation = false,
			insert_at_start = false,
			clickable = true,
			focus_on_close = "left",
			tabpages = true,
			icons = {
				gitsigns = {
					added = { enabled = true, icon = "+" },
					changed = { enabled = true, icon = "~" },
					deleted = { enabled = true, icon = "-" },
				},
				inactive = { button = "×" },
				current = { buffer_index = true },
			},
			no_name_title = "[X]",
			sidebar_filetypes = {
				-- Use the default values: {event = 'BufWinLeave', text = '', align = 'left'}
				["neo-tree"] = { event = "BufWipeout" },
			}, -- …etc.
			sort = {
				-- tells barbar to ignore case differences while sorting buffers
				ignore_case = true,
			},
		})
		local keymap = vim.keymap
		local opts = { noremap = true, silent = true }

		-- Move to previous/next
		keymap.set("n", "<A-,>", "<Cmd>BufferPrevious<CR>", opts)
		keymap.set("n", "<A-.>", "<Cmd>BufferNext<CR>", opts)
		-- Re-order to previous/next
		keymap.set("n", "<A-<>", "<Cmd>BufferMovePrevious<CR>", opts)
		keymap.set("n", "<A->>", "<Cmd>BufferMoveNext<CR>", opts)
		-- Goto buffer in position...
		keymap.set("n", "<leader>b1", "<Cmd>BufferGoto 1<CR>", opts)
		keymap.set("n", "<leader>b2", "<Cmd>BufferGoto 2<CR>", opts)
		keymap.set("n", "<leader>b3", "<Cmd>BufferGoto 3<CR>", opts)
		keymap.set("n", "<leader>b4", "<Cmd>BufferGoto 4<CR>", opts)
		keymap.set("n", "<leader>b5", "<Cmd>BufferGoto 5<CR>", opts)
		keymap.set("n", "<leader>b6", "<Cmd>BufferGoto 6<CR>", opts)
		keymap.set("n", "<leader>b7", "<Cmd>BufferGoto 7<CR>", opts)
		keymap.set("n", "<leader>b8", "<Cmd>BufferGoto 8<CR>", opts)
		keymap.set("n", "<leader>b9", "<Cmd>BufferGoto 9<CR>", opts)
		keymap.set("n", "<leader>b0", "<Cmd>BufferLast<CR>", opts)
		-- Pin/unpin buffer
		keymap.set("n", "<A-p>", "<Cmd>BufferPin<CR>", opts)
		-- Close buffer
		keymap.set("n", "<A-c>", "<Cmd>BufferClose<CR>", opts)
		-- Wipeout buffer
		--                 :BufferWipeout
		-- Close commands
		--                 :BufferCloseAllButCurrent
		--                 :BufferCloseAllButPinned
		--                 :BufferCloseAllButCurrentOrPinned
		--                 :BufferCloseBuffersLeft
		--                 :BufferCloseBuffersRight
		-- Magic buffer-picking mode
		keymap.set("n", "<C-p>", "<Cmd>BufferPick<CR>", opts)
		-- Sort automatically by...
		keymap.set("n", "<leader>bb", "<Cmd>BufferOrderByBufferNumber<CR>", opts)
		keymap.set("n", "<leader>bn", "<Cmd>BufferOrderByName<CR>", opts)
		keymap.set("n", "<leader>bd", "<Cmd>BufferOrderByDirectory<CR>", opts)
		keymap.set("n", "<leader>bl", "<Cmd>BufferOrderByLanguage<CR>", opts)
		keymap.set("n", "<leader>bw", "<Cmd>BufferOrderByWindowNumber<CR>", opts)
	end,
}
