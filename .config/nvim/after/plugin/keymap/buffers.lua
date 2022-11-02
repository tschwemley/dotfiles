local km = require('schwem.util.keymap')

km.nnoremap("<leader>c",  ":bd<CR>")
km.nnoremap("<leader>bb", ":bp<CR>")
km.nnoremap("<leader>bn", ":bn<CR>")

km.nnoremap("<leader>bj", "<Cmd>BufferLinePick<CR>")
km.nnoremap("<leader>bh", ":BufferLineCloseLeft<CR>")
km.nnoremap("<leader>bl", ":BufferLineCloseRight<CR>")

km.nnoremap("<leader>bf", ":Telescope buffers<CR>")
