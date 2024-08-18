return {
	"tiagovla/tokyodark.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		--vim.cmd("colorscheme evening")

		vim.cmd("colorscheme tokyodark")
		local c = require("tokyodark.palette")
		-- Floats/Windows
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "None", fg = "#488DFF" })
		vim.api.nvim_set_hl(0, "FloatBorder", { bg = "None", fg = "#488DFF" })
		vim.api.nvim_set_hl(0, "WhichKeyFloat", { bg = "None", fg = "#488DFF" })
		vim.api.nvim_set_hl(0, "BufferTabpageFill", { fg = "None" })
		vim.api.nvim_set_hl(0, "VertSplit", { bg = "#488DFF", fg = "#488DFF" })

		vim.api.nvim_set_hl(0, "BqfPreviewBorder", { link = "FloatBorder" })
		vim.api.nvim_set_hl(0, "BufferInactiveIndex", { link = "BufferInactive" })
		vim.api.nvim_set_hl(0, "LspInfoBorder", { link = "FloatBorder" })

		-- Tree
		vim.api.nvim_set_hl(0, "NvimTreeFolderIcon", { bg = "None", fg = "None" })

		-- Misc
		vim.api.nvim_set_hl(0, "GitSignsCurrentLineBlame", { link = "Comment" })
		vim.api.nvim_set_hl(0, "StatusLine", { bg = "None" })
		vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "None" })
		--vim.api.nvim_set_hl(0, "rainbowcol1", { fg = c.blue, ctermfg = 9 })
		--vim.api.nvim_set_hl(0, "TSRainbowRed", { fg = c.blue, ctermfg = 9 })
		--vim.api.nvim_set_hl(0, "RainbowDelimiterRed", { fg = c.blue, ctermfg = 9 })
		vim.api.nvim_set_hl(0, "Boolean", { fg = "#488DFF" })
		vim.api.nvim_set_hl(0, "BufferOffset", { link = "EcovimSecondary" })
		vim.api.nvim_set_hl(0, "LspInlayHint", { link = "LspCodeLens" })

		-- Bufferline
		vim.api.nvim_set_hl(0, "BufferCurrentMod", { fg = "#488DFF" })
		--	vim.api.nvim_set_hl(0, "BufferCurrentSign", { fg = "#488DFF" }) --c.cyan0 })
		vim.api.nvim_set_hl(0, "BufferCurrentSign", { fg = c.cyan0 })
		--vim.api.nvim_set_hl(0, "BufferInactiveSign", { bg = "#202331", fg = "#16161e" }) --c.dark3 })
		--vim.api.nvim_set_hl(0, "BufferInactiveMod", { bg = "NONE", fg = "#16161e" }) --c.yellow })
		vim.api.nvim_set_hl(0, "BufferInactiveSign", { bg = "#202331", fg = c.dark3 })
		vim.api.nvim_set_hl(0, "BufferInactiveMod", { bg = "NONE", fg = c.yellow })

		vim.api.nvim_set_hl(0, "BufferLineOffsetSeparator", { bg = "#16161e", fg = "#16161e" })
	end,
}
