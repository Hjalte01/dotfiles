-- nvim/after/ftplugin/java.lua

vim.keymap.set("n", "<leader>r", function()
  -- We add "; read -p '...'" to force the terminal to wait for you to press Enter
  require("snacks.terminal")("ant build && ant -Dlocaltest=true test; read -p 'Press Enter to close...'", {
    win = { position = "float" },
  })
end, {
  buffer = true,
  desc = "Run Ant Tests",
})
