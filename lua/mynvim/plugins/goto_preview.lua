return {
	"rmagatti/goto-preview",
	event = "BufEnter",
	--	config = true, -- necessary as per https://github.com/rmagatti/goto-preview/issues/88
	config = function()
		require("goto-preview").setup()

		local keymap = vim.keymap

		keymap.set("n", "gt", "<cmd>lua require('goto-preview').goto_preview_definition()<CR>", { noremap = true })
		keymap.set(
			"n",
			"<leader>gpt",
			"<cmd>lua require('goto-preview').goto_preview_type_definition()<CR>",
			{ noremap = true }
		)
		keymap.set(
			"n",
			"<leader>gpi",
			"<cmd>lua require('goto-preview').goto_preview_implementation()<CR>",
			{ noremap = true }
		)
		keymap.set(
			"n",
			"<leader>gpD",
			"<cmd>lua require('goto-preview').goto_preview_declaration()<CR>",
			{ noremap = true }
		)
		keymap.set("n", "<leader>gP", "<cmd>lua require('goto-preview').close_all_win()<CR>", { noremap = true })
		keymap.set(
			"n",
			"<leader>gpr",
			"<cmd>lua require('goto-preview').goto_preview_references()<CR>",
			{ noremap = true }
		)
	end,
}

-- nnoremap gpd <cmd>lua require('goto-preview').goto_preview_definition()<CR>
-- nnoremap gpt <cmd>lua require('goto-preview').goto_preview_type_definition()<CR>
-- nnoremap gpi <cmd>lua require('goto-preview').goto_preview_implementation()<CR>
-- nnoremap gpD <cmd>lua require('goto-preview').goto_preview_declaration()<CR>
-- nnoremap gP <cmd>lua require('goto-preview').close_all_win()<CR>
-- nnoremap gpr <cmd>lua require('goto-preview').goto_preview_references()<CR>
