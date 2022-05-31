local ok, nvim_tree = pcall(require, 'nvim-tree')

if not ok then
    return
end

nvim_tree.setup({
    auto_reload_on_write = true,
    hijack_cursor = true,
    respect_buf_cwd = true,
    update_focused_file = {
        enable = true,
    },
    view = {
        number = true,
        relativenumber = true,
        signcolumn = 'yes',
    },
    actions = {
        open_file = {
            quit_on_open = true,
        },
    },
    renderer = {
        indent_markers = {
            enable = true,
        },
        add_trailing = true,
        icons = {
            git_placement = 'signcolumn',
            glyphs = {
                default = '',
                symlink = '',
                git = {
                    unstaged = '',
                    staged = '✓',
                    unmerged = '',
                    renamed = '➜',
                    deleted = '',
                    untracked = '✗',
                    ignored = '◌',
                },
                folder = {
                    default = '',
                    open = '',
                    empty = '',
                    empty_open = '',
                    symlink = '',
                    symlink_open = '',
                    arrow_open = '',
                    arrow_closed = '',
                },
            },
        },
    },
})
