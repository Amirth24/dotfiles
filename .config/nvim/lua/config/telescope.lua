require("telescope").setup({
  defaults = {
      file_ignore_patterns = {
        "node_modules",
        "dist",
        "build",
        "target",
        "*-lock.json",
        "yarn.lock",
      },
  },
  extensions = {
    lazy = {
      -- Optional theme (the extension doesn't set a default theme)
      -- Whether or not to show the icon in the first column
      show_icon = true,
      -- Mappings for the actions
      mappings = {
      },
      -- Configuration that will be passed to the window that hosts the terminal
      -- For more configuration options check 'nvim_open_win()'
      terminal_opts = {
        relative = "editor",
        style = "minimal",
        border = "rounded",
        title = "Telescope lazy",
        title_pos = "center",
        width = 0.5,
        height = 0.5,
      },
      -- Other telescope configuration options
    },
  },
})

require("telescope").load_extension "lazy"
