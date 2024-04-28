function ColorMyPencils(color)
	color = color or "oxocarbon"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

return {
    {
        "nyoom-engineering/oxocarbon",
        name = "oxocarbon",
        config = function()

            vim.cmd("colorscheme oxocarbon")
            ColorMyPencils()

        end
    },


}
