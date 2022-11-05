local km = require("schwem.util.keymap")

-- todo: better organize
km.nnoremap("<leader>w", ":w!<CR>")

km.nnoremap("<leader>e", ":NvimTreeToggle<CR>")

-- Toggle current line or with count
km.nnoremap("<leader>/", function()
    return vim.v.count == 0
        and "<Plug>(comment_toggle_linewise_current)"
        or "<Plug>(comment_toggle_linewise_count)"
end, { expr = true })
km.vnoremap("<leader>/", "<Plug>(comment_toggle_linewise_visual)")

km.nnoremap("<leader>C", ":e ~/.config/nvim/init.lua<CR>")
