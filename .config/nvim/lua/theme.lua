-- LuaLine

local colorscheme = "kanagawa"

require("lualine").setup({
  options = {
    theme = colorscheme,
  }
})


require("kanagawa").setup({
  theme_style = "dark",
  compile = true,
  italic_comments = true,
  italic_keywords = true,
  italic_functions = true,
  italic_variables = false,
  invert_selection = false,
  contrast_windows = true,
  dark_float = true,
  transparent = true,
  disable_background = false,
  theme="dragon",
  background = {
    dark = "wave",
    light = "lotus",
  }
})






-- ColorScheme
vim.cmd("colorscheme " .. colorscheme)
