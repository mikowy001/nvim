local nTree = {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("nvim-web-devicons").setup({
            override = {
                vs = {
                    icon = "",
                    color = "#56b6c2",
                    cterm_color = "73",
                    name = "VertexShader"
                },
                fs = {
                    icon = "",
                    color = "#56b6c2",
                    cterm_color = "73",
                    name = "FragmentShader"
                }
            }
        })

        require("nvim-tree").setup({})
    end,
}

return nTree
