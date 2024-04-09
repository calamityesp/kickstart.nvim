-- Basic vim console command remap
vim.keymap.set("n" , "<leader>pv" , vim.cmd.Ex)


-- while highlighted, use j and k to move the lines up and down
--    - will also adjust if you move the lines within code blocks
vim.keymap.set("v" , "J" , ":m '>+1<CR>gv=gv")
vim.keymap.set("v" , "K" , ":m '<-2<CR>gv=gv")


-- pressing j in normal mode appends the line below to current line, this keymap will keep the cursor in the front
vim.keymap.set("n","J", "mzJ`z")


-- preserves copy buffer (word that was yanked) and sends overwritten words (highlighted with visual mode) with paste to the void
vim.keymap.set("n" , "<leader>P" , "\"_dp")


-- asbjornHaland :  clipboard remap (yanks to clipboard instead of vim buffer 
vim.keymap.set("n" , "<leader>y" , "\"+y")
vim.keymap.set("v" , "<leader>y" , "\"+y")
vim.keymap.set("n" , "<leader>Y" , "\"+Y")

vim.keymap.set("n" , "<leader>d" , "\"_d")
vim.keymap.set("v" , "<leader>d" , "\"_d")

-- Primeagen keymap to change projects using tmux
vim.keymap.set("n" , "<C-f>" , "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- remap the j and k keys so that I can start using the keyboard
vim.api.nvim_set_keymap('n', 'k', 'j', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-w>k', '<C-w>j', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-w><C-k>', '<C-w>j', {noremap = true})

vim.api.nvim_set_keymap('n', 'j', 'k', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-w>j', '<C-w>k', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-w><C-j>', '<C-w>k', {noremap = true})
