local wk = require "which-key"

wk.register {
    ["<leader>b"] = {
        name = "Buffers",

        -- Management
        f = { ":Telescope buffers<CR>", "List Buffers" },
        h = { ":BufferLineCloseLeft<cr>", "Close Left Buffers" },
        l = { ":BufferLineCloseRight<cr>", "Close Right Buffers" },

        -- Navigation
        b = { ":bp<cr>", "Prev Buffer" },
        n = { ":bn<cr>", "Next Buffer" },
        j = { ":BufferLinePick<cr>", "Jump to Buffer" },
    },
}
