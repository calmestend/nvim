return {
	{
		"jose-elias-alvarez/null-ls.nvim",
		name = "null-ls",
		config = function ()
			local null_ls = require("null-ls")

			null_ls.setup({
				sources = {
					null_ls.builtins.formatting.stylua,
					null_ls.builtins.diagnostics.eslint,
					null_ls.builtins.completion.spell,
					require("typescript.extensions.null-ls.code-actions"),
				},
			})
		end
	}
}

