local ok, which = pcall(require, 'which-key')
if not ok then
    return
end

which.setup({})

which.register({
    ['<leader>'] = {
        w = 'Save File',
        W = 'Save and Quit',
        q = 'Quit NeoVim',
        Q = 'Force Exit',
        k = 'Next Tab',
        j = 'Prev Tab',
        p = 'Jump to Tab',
        b = {
            name = 'Buffer',
            b = 'Sayonara',
            o = 'Close everything else',
        },
        m = {
            name = 'Move Tab',
            j = 'Move Tab Left',
            k = 'Move Tab Right',
        },
        n = {
            name = 'NvimTree',
            t = 'Open NvimTree',
            r = 'Refresh NvimTree',
            f = 'Find File NvimTree'
        },
        r = {
            name = 'more',
            g = 'Open Ranger',
        },
        g = {
            name = 'Git',
            a = 'Stage Hunk',
            u = 'Undo Stage Hunk',
            r = 'Reset Hunk',
            f = 'Stage File',
            n = 'Next Hunk',
            p = 'Prev Hunk',
            s = 'Git Status',
            h = 'Preview Hunk',
            m = 'Show Commit',
        },
        d = {
            name = 'DiffView',
            v = 'Open DiffView',
            h = 'Open DiffviewFileHistory',
            q = 'Quit DiffView',
            f = 'Toggle DiffViewFiles',
            r = 'Refresh DiffView',
        },
        h = {
            name = 'Hop',
            w = 'Jump Word',
            c = 'Jump Char 2',
            C = 'Jump Char 1',
            l = 'Jump Line Start',
            L = 'Jump Line'
        },
        f = {
            name = 'Find',
            f = 'Find Files',
            v = 'Find Files Preview',
            b = 'Find Open Buffers',
            i = 'Telescope builtin',
            g = 'Find Text'
        },
        s = {
            name = 'Sessions',
            s = 'Save Session',
            l = 'Load Close',
            d = 'Delete Session',
        },
        c = {
            name = 'LSP',
            a = 'CodeAction',
            f = 'Format Code',
            d = 'Code Diagnostics'
        }
    },
})
