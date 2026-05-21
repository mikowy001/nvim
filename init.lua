-- Load settings
	require("settings")

----------------------------------------------------------------------

-- Make lazy "listen" for spec(It specyfies what modules to import)
	require("Lazy.launch")


-- Load Lazy modules
	-- NOTE: Add colorshemes HERE and make one run on init in vim.cmd("colorsheme yourcolorsheme")(you can find it in this file)
	-- Load ColorSchemes
		-- Gruvbox
			spec("ColorSchemes.gruvbox")
		-- Melange
			spec("ColorSchemes.melange")
		-- Ashen(Dark one)
			spec("ColorSchemes.ashen")
		-- Nord
			spec("ColorSchemes.nord")

	-- Load Mason
		spec("Plugins.mason")

	-- Load MarkdownPreview
		spec("Plugins.markdown-preview")

	-- Load TinyDiagnostics
		spec("Plugins.tinydiagnostics")

	-- Load TreeSitter
		spec("Plugins.treesitter")

	-- Load Snackey
		spec("Plugins.snacks")

	-- Load nTree
		spec("Plugins.ntree")

	-- Load Harpoon
		spec("Plugins.harpoon")

	-- Load TeleScope
		spec("Plugins.telescope")

	-- Load Undotree
		spec("Plugins.undotree")

	-- Load TodoComms
		spec("Plugins.todocomms")

	-- Load Fugitive
		spec("Plugins.fugitive")

	-- Load Debugger(Dap)
		spec("Plugins.dap")

	-- Load Neogit
		spec("Plugins.neogit")

	-- Load Comment
		spec("Plugins.comment")
		spec("Plugins.aerial")


-- "Launch" lazy
	require("Lazy.lazy")

----------------------------------------------------------------------

-- Load keymaps
	require("keymaps")

----------------------------------------------------------------------

-- NOTE: Set scheme in settings.lua
	vim.cmd.colorscheme(vim.g.Theme)

local highlight_groups = {
    "Normal",
    "NormalNC",
    "Constant",
    "Special",
    "Identifier",
    "Statement",
    "PreProc",
    "Type",
    "Underlined",
    "Todo",
    "String",
    "Function",
    "Conditional",
    "Repeat",
    "Operator",
    "Structure",
    "LineNr",
    "NonText",
    "SignColumn",
    "CursorLine",
    "CursorLineNr",
    "StatusLine",
}

for _, group in ipairs(highlight_groups) do
    vim.api.nvim_set_hl(0, group, { bg = "NONE", ctermbg = "NONE" })
end
