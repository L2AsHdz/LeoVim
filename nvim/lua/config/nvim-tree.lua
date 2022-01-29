vim.g.nvim_tree_quit_on_open = 1
vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_add_trailing = 1
vim.g.nvim_tree_respect_buf_cwd = 1
vim.g.nvim_tree_icons = {
    default = "",
    symlink = "",
    git = {
        unstaged = "",
        staged = "✓",
        unmerged = "",
        renamed = "➜",
        deleted = "",
        untracked = "ﱵ",
        ignored = "◌",
    },
    folder = {
        default = "",
        open = "",
        empty = "",
        empty_open = "",
        symlink = "",
        symlink_open = "",
        arrow_open = "",
        arrow_closed = ""
    }
}

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
