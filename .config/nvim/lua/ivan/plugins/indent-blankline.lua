-- import lualine plugin safely
local setup, indent_blankline = pcall(require, "indent_blankline")
if not setup then
	return
end

vim.cmd([[highlight IndentBlanklineIndent1 guifg=#C678DD gui=nocombine]])

-- indent_blankline list chars
vim.opt.list = true
vim.opt.listchars:append("space:⋅")

-- configure indent_blankline
indent_blankline.setup({
	space_char_blankline = " ",
	show_current_context = true,
	show_current_context_start = true,
	char_highlight_list = {
		"IndentBlanklineIndent1",
	},
})
