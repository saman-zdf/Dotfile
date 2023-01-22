require("github-theme").setup({
	theme_style = "dark",
	comment_style = "NONE",
	keyword_style = "NONE",
	function_style = "NONE",
	variable_style = "NONE",
	dark_sidebar = true,

	overrides = function(c)
		return {
			htmlTag = { fg = c.green, bg = "#282c34", sp = c.hint, style = "underline" },
			DiagnosticHint = { link = "LspDiagnosticsDefaultHint" },
			-- this will remove the highlight groups
			TSField = {},
		}
	end,
})
