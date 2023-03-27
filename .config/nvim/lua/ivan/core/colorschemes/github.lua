local setup, colorscheme = pcall(require, "github-theme")
if not setup then
	return
end

colorscheme.setup({
	theme_style = "dimmed",
	function_style = "italic",
	sidebars = { "qf", "vista_kind", "terminal", "packer" },

	-- Change the "hint" color to the "orange" color, and make the "error" color bright red
	colors = { hint = "orange", error = "#ff0000" },

	-- Overwrite the highlight groups
	overrides = function(colors)
		return {
			htmlTag = { fg = colors.red, bg = "#282c34", sp = colors.hint, style = "underline" },
			DiagnosticHint = { link = "LspDiagnosticsDefaultHint" },
			-- this will remove the highlight groups
			TSField = {},
		}
	end,
})
