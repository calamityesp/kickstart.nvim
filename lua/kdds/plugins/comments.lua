-- ***********************************************************************************************
-- ***Comment           -- "gc" to comment visual regions/lines
-- ***********************************************************************************************
return {
   "numToStr/Comment.nvim",
   events = { "BufReadPre", "BufNewFile" },
   dependencies = {
      "JoosepAlviste/nvim-ts-context-commentstring",
   },
   config = function()
      -- import comment plugin safely
      local comment = require("Comment")

      local ts_context_commentstring = require("ts_context_commentstring.integrations.comment_nvim")

      -- enable comment
      comment.setup({
         padding = true, ---Add a space b/w comment and the line

         ---Whether the cursor should stay at its position
         sticky = true,
         ---Lines to be ignored while (un)comment
         ignore = "",
         ---LHS of toggle mappings in NORMAL mode
         toggler = {
            ---Line-comment toggle keymap
            line = "<leader>gcc",
            ---Block-comment toggle keymap
            block = "<leader>gbc",
         },
         -- for commenting tsx, jsx, svelte, html files
         pre_hook = ts_context_commentstring.create_pre_hook(),
      })
   end,
}
