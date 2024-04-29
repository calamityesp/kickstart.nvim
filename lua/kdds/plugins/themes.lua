return {
   "folke/tokyonight.nvim",
   priority = 1000,
   config = function()
      --local bg = "#011628"
      local bg = "#000000"                                     -- Color of the Active Background
     -- local bg_dark = "#011423"
      local bg_dark = "#000D18"                                -- Color of the inactive background
      local bg_highlight = "#143652"
      local bg_search = "#0A64AC"
      local bg_visual = "#275378"
      local fg = "#CBE0F0"
      local fg_dark = "#B4D0E9"
      local fg_gutter = "#627E97"
      local border = "#547998"

      require("tokyonight").setup({
         style = "night",
         on_colors = function(colors)      --modify tokyonight color themes with this function 
            colors.bg = bg
            colors.bg_dark = bg_dark
            colors.bg_float = bg_dark
            colors.bg_highlight = bg_highlight
            colors.bg_popup = bg_dark
            colors.bg_search = bg_search
            colors.bg_sidebar = bg_dark
            colors.bg_statusline = bg_dark
            colors.bg_visual = bg_visual
            colors.border = border
            colors.fg = fg
            colors.fg_dark = fg_dark
            colors.fg_float = fg
            colors.fg_gutter = fg_gutter
            colors.fg_sidebar = fg_dark
         end,
      })


      vim.api.nvim_set_hl(0,"Normal", {bg = "none"})                 -- set the background to none to match terminal emulator color
      vim.api.nvim_set_hl(0,"NormalFloat", {bg = "none"})          -- same as above for floating windows
      vim.api.nvim_set_hl(0,"NormalNC", {bg = "none"})          -- same as above for floating windows
      vim.cmd("colorscheme tokyonight")
   end
}
