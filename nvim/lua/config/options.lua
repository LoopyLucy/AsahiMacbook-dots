-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Force LazyVim to see the directory with build.gradle as the root
vim.g.root_spec = { "lsp", { ".git", "lua" }, "build.gradle", "cwd" }
