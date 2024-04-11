-- vim.opt.guicursor = ""


-- tab/indent options
vim.opt.tabstop = 3
vim.opt.expandtab = true
vim.opt.shiftwidth = 3
vim.opt.smarttab= true
vim.opt.smartindent = true

-- highlight options
vim.opt.hlsearch = true
vim.opt.incsearch = true                                             -- highlight as you are searching values

-- display text options 
vim.opt.wrap = false
vim.opt.colorcolumn = "120"
vim.opt.scrolloff = 10                                               -- never have less than 10 lines at the top of bottom as you scroll

-- line number options
vim.opt.number = true
vim.opt.relativenumber = true

--file options
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir= os.getenv('HOME') .. "/.vim/undodir"              -- change the default directory for neovim to one in home directory (undo tree has a long running dire0
vim.opt.undofile = true
vim.opt.updatetime = 50

-- vim terminal options 
vim.opt.termguicolors = true

-- vim editor options 
vim.opt.mouse= 'a'                                                -- Setting mouse mode on/off (useful for resizing) 
vim.opt.mousemodel= 'extend'
vim.opt.clipboard='unnamedplus'                                   -- sync clipboard with os and neovim

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

