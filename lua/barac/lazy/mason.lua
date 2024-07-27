return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		--Mason Setup
		require("mason").setup({
			ui = {
				icons = {
					package_installed = "✓",
				},
			},
		})

		--Mason-LSP Setup
		require("mason-lspconfig").setup({
			ensure_installed = {
				"lua_ls",
				"cssls",
				"jsonls",
				"emmet_ls",
				"tsserver",
				"eslint",
				"html",
				"svelte",
				"tailwindcss",
				"templ",
				"yamlls",
			},
		})
		require("mason-tool-installer").setup({
			ensure_installed = {
				"prettierd",
				"prettier",
				"stylua",
				"eslint_d",
			},
		})
	end,
}
