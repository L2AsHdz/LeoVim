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
        deleted = "",
        untracked = "✗",
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
    auto_reload_on_write = false,
    hijack_cursor = true,
    update_focused_file = {
        enable = true,
    },
    view = {
        number = true,
        relativenumber = true,
        signcolumn = 'yes'
    },
    actions = {
        open_file = {
            quit_on_open = true
        }
    }
})
