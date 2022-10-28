local km = require('schwem.util.keymap')

km.snnoremap("<leader>gg", "<cmd>lua lazygit_toggle()<CR>")
km.nnoremap("<leader>gl", ":Telescope<CR>")
km.nnoremap("<leader>gh", ":Telescope git_bcommits<CR>")
km.nnoremap("<leader>gl", ":Telescope<CR>")


