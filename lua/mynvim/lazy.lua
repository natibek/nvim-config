local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

vim.api.nvim_create_autocmd("Colorscheme", {
	group = vim.api.nvim_create_augroup("config_custom_highlights", {}),
	callback = function()
		-- Current tab colour adjustments for barbar.nvim
	end,
})

require("lazy").setup("mynvim.plugins")
