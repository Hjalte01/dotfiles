return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      -- The component to insert the emoji has been removed.
      --
      return opts -- returns the default opts without the custom emoji component
    end,
  },
}
