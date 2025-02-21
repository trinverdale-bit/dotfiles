function ColorMyPencils(color)
    color = color or "rose-pine"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, "@function.method.call", { fg = "#ebbcba", bold = false })
    vim.api.nvim_set_hl(0, "@module", { fg = "#31748f", bold = false })
end

return {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
        require('rose-pine').setup({
            disable_background = true,
            styles = {
                italic = false,
            },
        })

        ColorMyPencils()
    end
}
