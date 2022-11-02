vim.api.nvim_create_autocmd("FileType", {
    pattern = "go",
    command = "setlocal sw=4 ts=4",
})
