local h = require("schwem.helpers")

h.nnoremap("<leader>ds", "DapStart<CR>")
h.nnoremap("<leader>dc", "DapContinue<CR>")

h.nnoremap("<leader>dt", "DapToggleBreakpoint<CR>")
h.nnoremap("<leader>di", "DapInto<CR>")
h.nnoremap("<leader>do", "DapOver<CR>")
