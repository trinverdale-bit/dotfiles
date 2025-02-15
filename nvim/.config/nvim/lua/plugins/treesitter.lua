return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            local config = require("nvim-treesitter.configs")
            config.setup({
                auto_install = true,
                highlight = { enable = true },
                indent = { enable = true },
            })
        end
    },
    {
        "nvim-treesitter/playground",
        config = function()
            require("nvim-treesitter.configs").setup {
                playground = {
                    enable = true,
                },
            }
        end,
    }
}
