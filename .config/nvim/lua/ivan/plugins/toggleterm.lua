-- import telescope plugin safely
local setup, toggleterm = pcall(require, "toggleterm")
if not setup then
	return
end

-- configure toggleterm
toggleterm.setup({})
