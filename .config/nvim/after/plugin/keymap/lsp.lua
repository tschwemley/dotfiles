local km = require "schwem.util.keymap"

km.nnoremap("<leader>lf", "<cmd>lua vim.lsp.buf.format()<CR>")
