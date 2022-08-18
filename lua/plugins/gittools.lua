return {
    { 'lewis6991/gitsigns.nvim', event = 'BufReadPre', config = G_getConfig('gitsigns') },
    { 'TimUntersberger/neogit', cmd = 'Neogit', config = G_getConfig('neogit') },
    {
        'sindrets/diffview.nvim',
        cmd = {
            'DiffviewOpen',
            'DiffviewFileHistory',
            'DiffviewFocusFiles',
            'DiffviewToggleFiles',
            'DiffviewRefresh',
        },
    },
    { 'akinsho/git-conflict.nvim', tag = '*', config = G_getSetup('git-conflict', {}) },
    {
        'APZelos/blamer.nvim',
        config = function()
            vim.g.blamer_enabled = 1
            vim.g.blamer_delay = 750
        end,
    },
    {
        'rhysd/git-messenger.vim',
        cmd = 'GitMessenger',
        config = function()
            vim.g.git_messenger_floating_win_opts = { border = 'single' }
            vim.g.git_messenger_popup_content_margins = false
        end,
    },
}
