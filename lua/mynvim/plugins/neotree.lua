return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
		"3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},
	config = function()
		require("neo-tree").setup({
			popup_border_style = "double",
			sort_case_insensitive = true,
			default_component_configs = {
				container = {
					enable_character_fade = true,
				},
				indent = {
					indent_size = 2,
					padding = 1, -- extra padding on left hand side
					-- indent guides
					with_markers = false,
					indent_marker = "│",
					last_indent_marker = "└",
					highlight = "NeoTreeIndentMarker",
					-- expander config, needed for nesting files
					with_expanders = nil, -- if nil and file nesting is enabled, will enable expanders
					expander_collapsed = "",
					expander_expanded = "",
					expander_highlight = "NeoTreeExpander",
				},
				icon = {
					folder_closed = "",
					folder_open = "",
					folder_empty = "E",
					-- The next two settings are only a fallback, if you use nvim-web-devicons and configure default icons there
					-- then these will never be used.
					default = "*",
					highlight = "NeoTreeFileIcon",
				},
				modified = {
					symbol = "[+]",
					--highlight = "NeoTreeModified",
				},
				name = {
					trailing_slash = false,
					use_git_status_colors = false,
					--highlight = "NeoTreeFileName",
				},
				git_status = {
					symbols = {
						-- Change type
						added = "A", -- or "✚", but this is redundant info if you use git_status_colors on the name
						modified = "M", -- or "", but this is redundant info if you use git_status_colors on the name
						deleted = "✖", -- this can only be used in the git_status source
						renamed = "R", -- this can only be used in the git_status source
						-- Status type
						untracked = "??",
						ignored = "I",
						unstaged = "u",
						staged = "S",
						conflict = "C",
					},
				},
			},
			enable_github_status = true,
			filesystem = {
				filtered_items = {
					visible = true,
					show_hidden_count = true,
					hide_dotfiles = true,
					hide_gitignored = true,
					hide_by_name = {
						".git",
						".gitignore",
						".github",
						".venv",
						".env",
						--
						-- '.DS_Store',
						-- 'thumbs.db',
					},
					never_show = {},
				},
			},
			source_selector = {
				winbar = false,
				statusline = false,
			},
			window = {
				position = "float",
				mappings = {
					["P"] = { "toggle_preview", config = { use_float = false, use_image_nvim = true } },
				},
			},
		})
	end,
}
