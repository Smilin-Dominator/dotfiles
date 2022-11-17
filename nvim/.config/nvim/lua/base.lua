vim.cmd('autocmd!')

-- Theme
vim.cmd('colorscheme tokyonight')
vim.cmd('hi Normal guibg=NONE ctermbg=NONE') -- transparent

-- Encoding
vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'

-- Set copying
vim.opt.clipboard = 'unnamedplus'

-- General
vim.wo.number = true
vim.opt.title = true
vim.opt.autoindent = true
vim.opt.backup = false
vim.opt.showcmd = true

-- Editor
vim.opt.ignorecase = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true -- Spaces instead of Tab
vim.opt.ai = true -- Auto Indent
vim.opt.si = true -- Smart indent
vim.opt.wrap = false -- Hard wrap
vim.opt.backspace = 'start,eol,indent'

-- Ignore
vim.opt.wildignore:append { '*/node_modules/*' }

