return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				--lua
				null_ls.builtins.formatting.stylua, --stylua > formatter
				--js
				require("none-ls.diagnostics.eslint_d"), -- requires none-ls-extras.nvim
				-- js linting with eslint
				-- cannot do `null_ls.builtins.diagnostics.eslint_d,` no more
				null_ls.builtins.formatting.prettier, -- js formatting with prettier
				--python
				null_ls.builtins.formatting.black, -- python formatting with prettier
				null_ls.builtins.formatting.isort, -- pythong {imports} formatting with prettier
				-- null_ls.builtins.completion.spell,
				-- Use `require("none-ls.METHOD.TOOL")` instead of `null_ls.builtins.METHOD.TOOL` to use these extras.
				-- btw diagnostics = linting

        -- still need cpp, c , c#, html , css
			},
		})
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {}) -- go format
	end,
}
