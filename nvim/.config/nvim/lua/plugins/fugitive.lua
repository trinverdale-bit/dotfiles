return {
    "tpope/vim-fugitive",
    config = function()
        vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
        vim.keymap.set("n", "<leader>gc", ":Git commit<CR>")
        vim.keymap.set("n", "<leader>gp", ":Git push<CR>")
    end
}
