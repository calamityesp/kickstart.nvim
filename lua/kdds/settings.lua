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
vim.opt.mouse= ""
