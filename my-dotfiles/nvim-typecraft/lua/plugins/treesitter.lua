return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		-- treesitter
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = {
				"lua",
				"c",
				"cpp",
				"c_sharp",
				"css",
				"html",
				"javascript",
				"markdown",
				"markdown_inline",
				"vim",
				"vimdoc",
			},
      auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },
			additional_vim_regex_highlighting = false,
		})
	end,
}
