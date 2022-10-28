local km = require('schwem.util.keymap')

-- todo: better organize
km.inoremap("jk", "<esc>")
km.nnoremap("<leader>w", ":w!<CR>")

km.nnoremap("<leader>e", ":NvimTreeToggle<CR>")

km.nmap("<leader>/", "gcc")
km.vmap("<leader>/", "gc")

--km.snnoremap("n", "<leader>g", "<cmd>lua lazygit_toggle()<CR>", {noremap = true, silent = true})
