-- import vscode plugin safely
local setup, colorscheme = pcall(require, "vscode")
if not setup then
	return
end

-- import vscode_colors plugin safely
local colors_setup, colors = pcall(require, "vscode.colors")
if not colors_setup then
	return
end

-- get colors form vscode.colors
colors = colors.get_colors()

-- configure colorscheme
colorscheme.setup({
	style = "dark", -- alternatively set style in setup
	transparent = true, -- enable transparent background
	italic_comments = true, -- enable italic comment
	disable_nvimtree_bg = true, -- disable nvim-tree background color
	color_overrides = { -- override colors (see ./lua/vscode/colors.lua)
		vscLineNumber = "#FFFFFF",
	},

	group_overrides = { -- override highlight groups (see ./lua/vscode/theme.lua)
		-- this supports the same val table as vim.api.nvim_set_hl
		-- use colors from this colorscheme by requiring vscode.colors!
		Cursor = { fg = colors.vscDarkBlue, bg = colors.vscLightGreen, bold = true },
	},
})
require("vscode").load()
