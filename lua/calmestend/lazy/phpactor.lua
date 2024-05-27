return {
	{
		"gbprod/phpactor.nvim",
		build = function()
			require("phpactor.handler.update")()
		end,
		dependencies = {
			"nvim-lua/plenary.nvim",
			"neovim/nvim-lspconfig"
		},
		opts = {
			{
				install = {
					path = vim.fn.stdpath("data") .. "/home/barac/.local/share/nvim/opt",
					branch = "master",
					bin = vim.fn.stdpath("data") .. "/home/barac/.local/share/nvim/opt/phpactor/bin/phpactor",
					php_bin = "php",
					composer_bin = "composer",
					git_bin = "git",
					check_on_startup = "none",
				},
				lspconfig = {
					enabled = true,
					options = {
						capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities()),
						filetypes = { "php" },
					},
				},
			}
		},
	}
}
