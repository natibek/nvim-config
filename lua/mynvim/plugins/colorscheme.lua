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
		vim.api.nvim_set_hl(0, "VertSplit", { bg = "#488DFF", fg = "#488DFF" })

		vim.api.nvim_set_hl(0, "BqfPreviewBorder", { link = "FloatBorder" })
		vim.api.nvim_set_hl(0, "BufferInactiveIndex", { link = "BufferInactive" })
		vim.api.nvim_set_hl(0, "LspInfoBorder", { link = "FloatBorder" })

		-- Comments
		vim.api.nvim_set_hl(0, "Comment", { bg = "#202331", fg = "#488Daa" })
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
		-- 488DFF (dark blue)
		-- 488Daa (light bluegreen)
		-- 005555 (green)
		-- 118888 (dark green)
		-- 44475A (gray)
		-- d7a65f (yellow)
		-- d7a6aa (pink)

		vim.api.nvim_set_hl(0, "BufferCurrent", { bg = "#005555" })
		vim.api.nvim_set_hl(0, "BufferCurrentMod", { bg = "None", fg = "#488Daa" })
		vim.api.nvim_set_hl(0, "BufferCurrentSign", { bg = "None", fg = "#005555" })
		vim.api.nvim_set_hl(0, "BufferCurrentSignRight", { bg = "None", fg = "#005555" })

		vim.api.nvim_set_hl(0, "BufferInactive", { bg = "#44475A" })
		vim.api.nvim_set_hl(0, "BufferInactiveSign", { bg = "None", fg = "#005555" })
		vim.api.nvim_set_hl(0, "BufferInactiveMod", { bg = "None", fg = "#d7a699" })
		vim.api.nvim_set_hl(0, "BufferInactiveSign", { bg = "None", fg = "#005555" })

		vim.api.nvim_set_hl(0, "BufferVisible", { bg = "#44475A" })
		vim.api.nvim_set_hl(0, "BufferVisibleSign", { bg = "None", fg = "#005555" })
		vim.api.nvim_set_hl(0, "BufferVisibleMod", { bg = "None", fg = "#488Daa" })
		vim.api.nvim_set_hl(0, "BufferVisibleSign", { bg = "None", fg = "#005555" })

		vim.api.nvim_set_hl(0, "BufferTabpageFill", { fg = "None" })
		vim.api.nvim_set_hl(0, "BufferTabpages", { bg = "None", fg = "#488daa" })
		vim.api.nvim_set_hl(0, "BufferTabpagesSep", { bg = "None" })

		-- vim.api.nvim_set_hl(0, "BufferLineOffsetSeparator", { bg = "#16161e", fg = "#16161e" })
	end,
}
