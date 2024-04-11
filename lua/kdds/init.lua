-- mapping the leader key 
vim.g.mapleader = " "
vim.g.maplocalleader = ' '

-- Set to true if you have a Nerd Font installed
vim.g.have_nerd_font = false

require("kdds.remap")
require("kdds.settings")
require("kdds.lazy")
