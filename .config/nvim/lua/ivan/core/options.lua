local opt = vim.opt -- for conciseness

-- line numbers
opt.relativenumber = false
opt.number = true

-- tabs & indentation
local tabWidth = tonumber(os.getenv("NVIM_INDENT")) or 4
opt.tabstop = tabWidth
opt.shiftwidth = tabWidth
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = false
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

--split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")
