local h = require('schwem.helpers')

h.nnoremap("<leader>c",  ":bd<CR>")
h.nnoremap("<leader>bb", ":bp<CR>")
h.nnoremap("<leader>bn", ":bn<CR>")
h.nnoremap("<leader>bj", ":BufferLinePick<CR>")

h.nnoremap("<leader>bh", ":BufferLineCloseLeft<CR>")
h.nnoremap("<leader>bl", ":BufferLineCloseRight<CR>")
