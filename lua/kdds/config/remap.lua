--   Local Variables --
local keymap = vim.keymap
local api = vim.api

--        --------------------------- General keymaps ---------------------------------
keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>") -- Set highlight clear on pressing <Esc> in normal mode

-- Basic vim console command remap
--[[ keymap.set("n" , "<leader>pv" , vim.cmd.Ex)                                        -- Map leader<pv> to open netrw file explorer ]]
keymap.set("i", "jk", "<ESC>") -- Map jk in insert mode to escape out of insert mode

-- while highlighted, use j and k to move the lines up and down
--    - will also adjust if you move the lines within code blocks
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- pressing j in normal mode appends the line below to current line, this keymap will keep the cursor in the front
keymap.set("n", "J", "mzJ`z")

-- preserves copy buffer (word that was yanked) and sends overwritten words (highlighted with visual mode) with paste to the void

keymap.set("n", "<leader>P", '"_dp')

-- asbjornHaland :  clipboard remap (yanks to clipboard instead of vim buffer
keymap.set("n", "<leader>y", '"+y')
keymap.set("v", "<leader>y", '"+y')
keymap.set("n", "<leader>Y", '"+Y')

keymap.set("n", "<leader>d", '"_d')
keymap.set("v", "<leader>d", '"_d')

-- Primeagen keymap to change projects using tmux
keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- remap the j and k keys so that I can start using the keyboard
api.nvim_set_keymap("n", "k", "j", { noremap = true })
api.nvim_set_keymap("n", "<C-w>k", "<C-w>j", { noremap = true })
api.nvim_set_keymap("n", "<C-w><C-k>", "<C-w>j", { noremap = true })

api.nvim_set_keymap("n", "j", "k", { noremap = true })
api.nvim_set_keymap("n", "<C-w>j", "<C-w>k", { noremap = true })
api.nvim_set_keymap("n", "<C-w><C-j>", "<C-w>k", { noremap = true })

--        --------------------------- Diagnostic keymaps ---------------------------------
keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
--keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

--          -----------------------------------------Window Management ------------------------------------

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the lower window" })
keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the upper window" })

-- Split window keymaps
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split Screen Vertically" }) -- split screen vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split Screen Horizontally" }) -- split screen horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equally sized" }) -- Make Screens Equally Sized
keymap.set("n", "<leader>sc", "<cmd>close<CR>", { desc = "Close current split" }) -- Close current split

-- Tab Management
keymap.set("n", "<leader>tn", "<cmd>tabnew<CR>", { desc = "open a new tab" }) -- Open a new tab
keymap.set("n", "<leader>tc", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- Close current tab
keymap.set("n", "<leader>t<Right>", "<cmd>tabn<CR><cmd>NvimTreeRefresh<CR>", { desc = "Go to next tab" }) -- Move to next tab
keymap.set("n", "<leader>t<Left>", "<cmd>tabp<CR><cmd>NvimTreeRefresh<CR>", { desc = "Go to previous tab" }) -- Go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR><cmd>NvimTreeRefresh<CR>", { desc = "Open current bugger in new tab" }) --Open current buffer in new tab
