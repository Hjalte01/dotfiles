-- ~/.config/nvim/lua/plugins/catppuccin.lua (or a similar name)

return {
  -- The plugin spec for Catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin",

    -- Set lazy = false and a high priority so it loads early and quickly
    lazy = false,
    priority = 1000,

    -- Optional: Configure your preferred flavor and other options
    opts = {
      flavour = "mocha", -- Use 'mocha' (dark) or 'macchiato' if you prefer
      background = {
        light = "latte", -- Not applicable since you use mocha
        dark = "mocha",
      },
      transparent_background = false, -- Set to true if you want your Ghostty terminal background to show through
      styles = {
        comments = { "italic" }, -- Good for quick readability
        keywords = { "bold" }, -- Good for quick readability
      },
    },

    -- This config function runs after the plugin is loaded
    config = function(_, opts)
      require("catppuccin").setup(opts)
      -- CRITICAL: Set the colorscheme here to activate it
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
