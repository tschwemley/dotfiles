local km = require "schwem.util.keymap"
local wk = require "which-key"

-- TODO: decide if keeping f variants, deleting, or splitting
wk.register {
  ["<leader>s"] = {
    name = "Search",

    f = { ":Telescope find_files<CR>", "Search Files" },
    h = { ":Telescope help_tags<CR>", "Search Help" },
    k = { ":Telescope keymaps<CR>", "Search Keymaps" },
    m = { ":Telescope man_pages<CR>", "Search Man Pages" },
    o = { ":Telescope oldfiles<CR>", "Search Recent Files" },
    t = { ":Telescope live_grep<CR>", "Search rg text" },
    w = { ":Telescope grep_string<CR>", "Search rg under cursor" },
  },
}

-- TODO: which-key definition
km.nnoremap("<leader><enter>", ":Telescope current_buffer_fuzzy_find<CR>")
km.nnoremap("<leader>f", ":Telescope find_files<CR>")
