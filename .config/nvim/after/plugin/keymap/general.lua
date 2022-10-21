local h = require('schwem.helpers')

-- todo: better organize
h.inoremap("jk", "<esc>")
h.nnoremap("<leader>w", ":w!<CR>")

h.nnoremap("<leader>e", ":NvimTreeToggle<CR>")

h.nmap("<leader>/", "gcc")
h.vmap("<leader>/", "gc")
--h.imap("", "")
