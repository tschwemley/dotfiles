require("nvim-tree").setup({
  create_in_closed_folder = true,
  respect_buf_cwd = true,
  update_focused_file = {
        enable = true,
        update_cwd = true,
        ignore_list = {},
  },
})
