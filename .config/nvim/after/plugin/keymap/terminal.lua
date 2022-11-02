local km = require('schwem.util.keymap')

function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
  vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
  vim.keymap.set("t", "<C-km.", "<Cmd>wincmd h<CR>", opts)
  vim.keymap.set("t", "<C-j>", "<Cmd>wincmd j<CR>", opts)
  vim.keymap.set("t", "<C-k>", "<Cmd>wincmd k<CR>", opts)
  vim.keymap.set("t", "<C-l>", "<Cmd>wincmd l<CR>", opts)
end

-- if you only want tkm.se mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

km.snnoremap("<leader>tf", "<cmd>ToggleTerm direction=float<CR>", { silent = true })
km.snnoremap("<leader>th", "<cmd>ToggleTerm direction=horizontal size=10<CR>", { silent = true })
km.snnoremap("<leader>tv", "<cmd>ToggleTerm direction=vertical size=80<CR>", { silent = true })

