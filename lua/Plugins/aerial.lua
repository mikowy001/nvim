return {
    "stevearc/aerial.nvim",
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "nvim-tree/nvim-web-devicons"
    },
    config = function()
        require("aerial").setup({
            backends = { "treesitter", "lsp" },
            show_unnamed_symbols = true,
            -- Setting filter_kind to false completely disables filtering
            -- and forces Aerial to show absolutely everything (Structs, Types, Variables, etc.)
            filter_kind = false, 
        })
        vim.keymap.set("n", "<leader>o", "<cmd>AerialToggle!<CR>")
    end
}
