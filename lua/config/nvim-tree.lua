local ok, nvim_tree = pcall(require, 'nvim-tree')

if not ok then
    return
end

nvim_tree.setup({
    create_in_closed_folder = true,
    update_cwd = true,
    hijack_cursor = true,
    respect_buf_cwd = true,
    update_focused_file = {
        enable = true,
    },
    view = {
        width = 35,
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
        add_trailing = true,
        group_empty = true,
        highlight_git = true,
        indent_markers = {
            enable = true,
        },
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
