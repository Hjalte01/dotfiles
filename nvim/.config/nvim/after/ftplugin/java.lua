-- nvim/after/ftplugin/java.lua

vim.keymap.set("n", "<leader>r", function()
  require("snacks.terminal")("ant build && ant -Dlocaltest=true test;read", {
    win = { position = "float" },
    start_insert = false,
    on_open = function()
      vim.cmd("stopinsert")
    end,
  })
end, {
  buffer = true,
  desc = "Run Ant Tests",
})
