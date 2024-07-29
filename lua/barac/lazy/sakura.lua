return {
	{
		"anAcc22/sakura.nvim",
		name = "sakura",
		dependencies = { 'rktjmp/lush.nvim' },
		config = function() 
			vim.o.termguicolors = true
			
			vim.opt.background = "dark" -- or "light"
			vim.cmd.colorscheme("sakura");
			vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
			vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		end

	}
}
