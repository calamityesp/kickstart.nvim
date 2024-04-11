local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({

   -- ***Sleuth            -- Detect tabstop and shiftwidth automatically
   'tpope/vim-sleuth',

   -- ***Comment           -- "gc" to comment visual regions/lines
   { 'numToStr/Comment.nvim', opts = {} },

   -- Adds git related signs to the gutter, as well as utilities for managing changes
   -- See `:help gitsigns` to understand what the configuration keys do
   {
      'lewis6991/gitsigns.nvim',
      opts = {
         signs = {
            add = { text = '+' },
            change = { text = '~' },
            delete = { text = '_' },
            topdelete = { text = '‾' },
            changedelete = { text = '~' },
         },
      },
   },


-----------------------------Install themes and syntax highlighting -----------------
	{ 'Mofiqul/vscode.nvim', as = 'vscode-syn' },
	{ 'folke/tokyonight.nvim',as = 'tokyonight' },
	{ 'rose-pine/neovim', as = 'rose-pine' },

})
