function setTheme(color)
      color = color or "tokyonight-night"
      vim.cmd.colorscheme(color)

	-- set background color to non for both Normal mode and float Normal
	vim.api.nvim_set_hl(0,'Normal', {bg = 'none'})
	vim.api.nvim_set_hl(0,'NormalFloat', {bg = 'none'})

   end


   -- execute the colorScheme function and override the theme. (note: "After" folder overrides everything after nvim loads)
   setTheme();
