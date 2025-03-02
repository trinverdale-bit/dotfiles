function ColorMyPencils(color)
    color = color or "rose-pine-moon"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })

    vim.api.nvim_create_autocmd("FileType", {
        pattern = "harpoon",
        callback = function()
            vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        end,
    })

    vim.api.nvim_create_autocmd("FileType", {
        pattern = "TelescopePrompt,TelescopeResults",
        callback = function()
            vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#1e1e2e" })
        end,
    })

    --vim.api.nvim_set_hl(0, "@function.method.call", { fg = "#ebbcba", bold = false })
    --vim.api.nvim_set_hl(0, "@module", { fg = "#31748f", bold = false })
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
