   -- ***********************************************************************************************
   -- ***Which-Key     -- Shows pending Keybinds
   -- ***********************************************************************************************
   return  { -- Useful plugin to show you pending keybinds.
   'folke/which-key.nvim',
   event = 'VeryLazy', -- Sets the loading event to 'VimEnter'
   init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 500
   end,
   config = function() -- This is the function that runs, AFTER loading

      -- require('which-key').setup({
      --    triggers_blacklist = {
      --       i = {"j", "k", "<leader>"}
      --    }
      -- })

      -- -- Document existing key chains
      -- require('which-key').register {
      --    ['<leader>c'] = { name = '[C]ode', _ = 'which_key_ignore' },
      --    ['<leader>d'] = { name = '[D]ocument', _ = 'whch_key_ignore' },
      --    ['<leader>r'] = { name = '[R]ename', _ = 'which_key_ignore' },
      --    ['<leader>s'] = { name = '[S]earch', _ = 'which_key_ignore' },
      --    ['<leader>w'] = { name = '[W]orkspace', _ = 'which_key_ignore' },
      -- }
      require('which-key').add({{ "<leader>f", group = "file" }, -- group
      { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File", mode = "n" },
      { "<leader>fb", function() print("hello") end, desc = "Foobar" },
      { "<leader>fn", desc = "New File" },
      { "<leader>f1", hidden = true }, -- hide this keymap
      { "<leader>w", proxy = "<c-w>", group = "windows" }, -- proxy to window mappings
      { "<leader>b", group = "buffers", expand = function()
         return require("which-key.extras").expand.buf()
      end
   },})

   end,
   opts = {
      -- configuration comes here 
      -- or leave it empty to sue default settings
      -- refer to teh configuration section
   }

}
