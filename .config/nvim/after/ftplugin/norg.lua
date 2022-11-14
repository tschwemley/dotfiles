local wk = require("which-key")

vim.opt_local.shiftwidth = 2
vim.opt_local.tabstop = 2

wk.register({"<C-t>", "<cmd>pu=strftime('%T')<cr>"}, {
    mode = "i",
    buffer = 1,
    silent = true,
    noremap = true
})

