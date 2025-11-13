return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      -- This section handles changes to the default opts (like adding the emoji)
      table.insert(opts.sections.lualine_x, {
        function()
          return "😄"
        end,
      })

      return opts
    end,
  },
}
