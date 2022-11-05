local km = require "schwem.util.keymap"

km.nnoremap("<leader>la", "<cmd>lua vim.lsp.buf.format()<CR>")
km.nnoremap("<leader>lf", "<cmd>lua vim.lsp.buf.format()<CR>")
km.nnoremap("<leader>lr", "<cmd>lua vim.lsp.buf.format()<CR>")
