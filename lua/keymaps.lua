-- NOTE: Schemay
-- vim.keymap.set("mode first letter", "input to activate", whattodo)
-- NOTE:
-- Complision's keymap is in mason.lua

-- Harpoon keymap
local mark = require "harpoon.mark"
local ui = require "harpoon.ui"
local term = require "harpoon.term"
vim.keymap.set("n", "<leader>e", ui.toggle_quick_menu, {})
vim.keymap.set("n", "<leader>a", mark.add_file, {})
vim.keymap.set("n", "<leader>c", function()
   term.gotoTerminal(1)
end)

-- TeleScope
local telescope_func = require "telescope.builtin"
vim.keymap.set("n", "<leader>f", telescope_func.find_files, {})

-- UndoTree && nTree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

vim.keymap.set("n", "<leader>tf", ":NvimTreeFocus<CR>")
vim.keymap.set("n", "<leader>tt", ":NvimTreeToggle<CR>")

-- makes the project with run flag.
vim.keymap.set("n", "<leader>m", ":w | !make run<CR>")

-- recompiles the project with run flag
vim.keymap.set("n", "<leader>M", ":w | !make -B run<CR>")

-- lspsaga keybinds. Its the thing that gives context about things.
vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", { silent = true })
vim.keymap.set("n", "<leader>pt", "<cmd>Lspsaga peek_type_definition<CR>", { silent = true })
vim.keymap.set("n", "<leader>pd", "<cmd>Lspsaga peek_definition<CR>", { silent = true })
vim.keymap.set("n", "<leader>lf", "<cmd>Lspsaga finder<CR>", { silent = true })

-- Debugger's

