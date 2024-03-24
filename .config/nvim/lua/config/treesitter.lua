require('nvim-treesitter.configs').setup({
	ensure_installed = {
		"c",
		"cpp",
		"lua",
		"python",
		"bash",
		"html",
		"css",
		"javascript",
		"typescript",
		"json",
		"yaml",
		"toml",
		"rust",
	},

	highlight = {
		enable = true,

		disable = function(lang, buf)
			local max_file_size = 3000*1024
			local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
			if ok and stats and stats.size > max_file_size then
				return true
			end
		end,


	},
	auto_install = true,
	sync_install = true,
	ignore_install = {
		"javascript",
	},


})
