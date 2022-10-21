local M = {}

M.imap = function(lhs, rhs)
  vim.api.nvim_set_keymap("i", lhs, rhs, {})
end

M.nmap = function(lhs, rhs)
  vim.api.nvim_set_keymap("n", lhs, rhs, {})
end

M.vmap = function(lhs, rhs)
  vim.api.nvim_set_keymap("v", lhs, rhs, {})
end

M.inoremap = function(lhs, rhs)
  vim.api.nvim_set_keymap("i", lhs, rhs, {noremap = true})
end

M.nnoremap = function(lhs, rhs)
  vim.api.nvim_set_keymap("n", lhs, rhs, {noremap = true})
end

return M
