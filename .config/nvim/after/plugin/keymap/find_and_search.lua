local km = require("schwem.util.keymap")
-- todo: decide if keeping f variants, deleting, or splitting

-- buffers
km.nnoremap("<leader><enter>", ":Telescope current_buffer_fuzzy_find<CR>")

-- files
km.nnoremap("<space>f", ":Telescope find_files<CR>")
km.nnoremap("<leader>sf", ":Telescope find_files<CR>")

-- km.lp
km.nnoremap("<leader>sf", ":Telescope find_files<CR>")

km.nnoremap("<leader>sk", ":Telescope keymaps<CR>")

-- man pages
km.nnoremap("<leader>sm", ":Telescope man_pages<CR>")


-- old files
km.nnoremap("<leader>so", ":Telescope oldfiles<CR>")

-- text project wide
km.nnoremap("<leader>st", ":Telescope live_grep<CR>")

-- text under cursor
km.nnoremap("<leader>sw", ":Telescope grep_string<CR>")
