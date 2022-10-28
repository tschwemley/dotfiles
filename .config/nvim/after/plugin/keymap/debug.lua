local km = require("schwem.util.keymap")

km.nnoremap("<leader>ds", "DapStart<CR>")
km.nnoremap("<leader>dc", "DapContinue<CR>")

km.nnoremap("<leader>dt", "DapToggleBreakpoint<CR>")
km.nnoremap("<leader>di", "DapInto<CR>")
km.nnoremap("<leader>do", "DapOver<CR>")
