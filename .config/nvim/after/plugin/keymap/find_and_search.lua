local h = require("schwem.helpers")
-- todo: decide if keeping f variants, deleting, or splitting

-- buffers
h.nnoremap("<leader>fb", ":Telescope buffers<CR>")
h.nnoremap("<leader><enter>", ":Telescope current_buffer_fuzzy_find<CR>")

-- files
h.nnoremap("<leader>ff", ":Telescope find_files<CR>")
h.nnoremap("<leader>sf", ":Telescope find_files<CR>")

-- help
h.nnoremap("<leader>sh", ":Telescope help_tags<CR>")

-- man pages
h.nnoremap("<leader>sm", ":Telescope man_pages<CR>")

-- old files
h.nnoremap("<leader>fo", ":Telescope oldfiles<CR>")
h.nnoremap("<leader>so", ":Telescope oldfiles<CR>")

-- text project wide
h.nnoremap("<leader>ft", ":Telescope live_grep<CR>")
h.nnoremap("<leader>st", ":Telescope live_grep<CR>")

-- text under cursor
h.nnoremap("<leader>fw", ":Telescope grep_string<CR>")
h.nnoremap("<leader>sw", ":Telescope grep_string<CR>")
