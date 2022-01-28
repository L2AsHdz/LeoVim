require('nvim-tree').setup({
    update_focused_file = {
        enable = true,
        update_cwd = false,
        ignore_list = {}
    },
    view = {
        number = true,
        relativenumber = true,
        signcolumn = 'yes'
    }
})

vim.cmd [[
    let g:nvim_tree_quit_on_open = 1
    let g:nvim_tree_indent_markers = 1
    let g:nvim_tree_add_trailing = 1
    let g:nvim_tree_respect_buf_cwd = 1

]]
