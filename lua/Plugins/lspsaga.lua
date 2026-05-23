local Lspsaga = {
    "nvimdev/lspsaga.nvim",
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "nvim-tree/nvim-web-devicons"
    },
    config = function()
        require("lspsaga").setup({
            ui = {
                border = "rounded",
                devicon = true,
            },
            hover = {
                open_link = "gx",
                open_cmd = "!chrome",
            },
            lightbulb = {
                enable = false,
            },
        })

        
    end
}
return Lspsaga
