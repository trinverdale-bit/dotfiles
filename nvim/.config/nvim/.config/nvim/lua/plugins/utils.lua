return {
    "olexsmir/gopher.nvim",
    ft = "go",
    config = function()
        require("gopher").setup()

        vim.keymap.set("n", "<leader>at", "<cmd>:GoTagAdd json <CR>")
        vim.keymap.set("n", "<leader>ee", "<cmd>:GoIfErr <CR>")
    end,
    build = function()
        vim.cmd.GoInstallDeps()
    end,
}
