return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		{ "folke/neodev.nvim", opts = {} },
	},
	config = function()
		local nvim_lsp = require("lspconfig")

		local mason_lspconfig = require("mason-lspconfig")

		local protocol = require("vim.lsp.protocol")

		local on_attach = function(client, bufnr)
			-- format on save
			if client.server_capabilities.documentFormattingProvider then
				vim.api.nvim_create_autocmd("BufWritePre", {
					group = vim.api.nvim_create_augroup("Format", { clear = true }),
					buffer = bufnr,
					callback = function()
						vim.lsp.buf.format()
					end,
				})
			end
			vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

			-- See `:help vim.lsp.*` for documentation on any of the below functions
			local bufopts = { noremap = true, silent = true, buffer = bufnr }
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
			vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
			vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, bufopts)
			vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, bufopts)
			vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, bufopts)
			vim.keymap.set("n", "<space>wl", function()
				print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
			end, bufopts)
			vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, bufopts)
			vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, bufopts)
			vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action, bufopts)
			vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
			vim.keymap.set("n", "<space>f", function()
				vim.lsp.buf.format({ async = true })
			end, bufopts)
		end

		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		mason_lspconfig.setup_handlers({
			function(server)
				nvim_lsp[server].setup({
					capabilities = capabilities,
				})
			end,
			["cssls"] = function()
				nvim_lsp["cssls"].setup({
					on_attach = on_attach,
					capabilities = capabilities,
					filetypes = { "css" },
				})
			end,
			["tailwindcss"] = function()
				nvim_lsp["tailwindcss"].setup({
					on_attach = on_attach,
					capabilities = capabilities,
				})
			end,
			["html"] = function()
				nvim_lsp["html"].setup({
					on_attach = on_attach,
					capabilities = capabilities,
					filetypes = { "html" },
				})
			end,
			["jsonls"] = function()
				nvim_lsp["jsonls"].setup({
					on_attach = on_attach,
					capabilities = capabilities,
					filetypes = { "json" },
				})
			end,
			["eslint"] = function()
				nvim_lsp["eslint"].setup({
					on_attach = on_attach,
					capabilities = capabilities,
					filetypes = { "js" },
				})
			end,
			["pyright"] = function()
				nvim_lsp["pyright"].setup({
					on_attach = on_attach,
					capabilities = capabilities,
					filetypes = { "py" },
				})
			end,
			--["harper_ls"] = function()
			--	nvim_lsp["harper_ls"].setup({
			--		on_attach = on_attach,
			--		capabilities = capabilities,
			--		cmd = { "harper-ls", "--stdio" },
			--		-- filetypes = { "cpp", "h", "c", "hpp" },
			--		settings = {
			--			["harper-ls"] = {
			--				linters = {
			--					spell_check = false,
			--					-- spelled_numbers = false,
			--					-- an_a = true,
			--					-- sentence_capitalization = true,
			--					-- unclosed_quotes = true,
			--					-- wrong_quotes = false,
			--					-- long_sentences = true,
			--					-- repeated_words = true,
			--					-- spaces = true,
			--					-- matcher = true,
			--					-- correct_number_suffix = true,
			--					-- number_suffix_capitalization = true,
			--					-- multiple_sequential_pronouns = true,
			--					-- linking_verbs = false,
			--					-- avoid_curses = true,
			--					-- terminating_conjunctions = true,
			--				},
			--			},
			--		},
			--	})
			--end,
			["clangd"] = function()
				nvim_lsp["clangd"].setup({
					capabilities = capabilities,
					on_attach = on_attach,
					filetypes = { "h", "c", "cpp", "cc", "objc", "objcpp" },
					flags = lsp_flags,
					cmd = { "clangd", "--header-insertion=never", "--enable-config" },
					single_file_support = true,
					root_dir = nvim_lsp.util.root_pattern(
						".clangd",
						".clang-tidy",
						".clang-format",
						"compile_commands.json",
						"compile_flags.txt",
						"configure.ac",
						".git"
					),
				})
			end,

			-- ["clangd"] = function()
			-- 	nvim_lsp["clangd"].setup({
			-- 		on_attach = on_attach,
			-- 		capabilities = capabilities,
			--
			-- 		cmd = {
			-- 			"clangd",
			-- 			"--enable-config",
			-- 			"--header-insertion=never",
			-- 		},
			-- 	})
			-- end,
		})
	end,
}
