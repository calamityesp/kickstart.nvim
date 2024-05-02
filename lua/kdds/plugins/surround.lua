-- ***********************************************************************************************
-- *** kylechui/nvim-surround  --Great plugin for deleting and modifying surrounding symbols and tags
-- ***********************************************************************************************

return {
  "kylechui/nvim-surround",
  event = { "BufReadPre", "BufNewFile" },
  version = "*", -- Use for stability; omit to use `main` branch for the latest features
  config = true,
    -- Commands  
  -- ys <motion> <char>               = surround with a character
  -- ds <surrounding char>            = delete the specified surrounding character
  -- cs <surrounding char> <new char> = replaces the surrounding character with new character 
  -- ys8jt                            = replace with new surrounding tag  (write new tag in console)
  -- note: to delete tags just do dst , cst changes the tag. etc 
}
