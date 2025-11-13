-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Disable the UNUSED provideres for HealthCHeck
vim.g.loaded_node_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0
