local ok, which = pcall(require, 'which-key')
if not ok then
    return
end

which.setup({
    window = {
        border = 'single',
    },
})

which.register({
    ['<leader>'] = {
        w = 'Save File',
        W = 'Save and Quit',
        q = 'Quit NeoVim',
        Q = 'Force Exit',
        k = 'Next Tab',
        j = 'Prev Tab',
        y = 'Copy All',
        b = {
            name = 'Buffer',
            b = 'Sayonara',
            o = 'Close everything else',
        },
        m = {
            name = 'Move Tab',
            j = 'Move Tab Left',
            k = 'Move Tab Right',
            m = 'Markdown Preview',
        },
        n = {
            name = 'NvimTree',
            t = 'Open NvimTree',
            r = 'Refresh NvimTree',
            f = 'Find File NvimTree',
        },
        r = {
            name = 'more',
            g = 'Open Ranger',
            n = 'Lsp Rename',
        },
        g = {
            name = 'Git',
            a = 'Stage Hunk',
            u = 'Undo Stage Hunk',
            r = 'Reset Hunk',
            b = 'Stage File',
            n = 'Next Hunk',
            p = 'Prev Hunk',
            s = 'Git Status',
            h = 'Preview Hunk',
            m = 'Show Commit',
            g = 'Refresh GitSigns',
            B = 'Reset Buffer',
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
            L = 'Jump Line',
        },
        f = {
            name = 'Find',
            c = 'Flutter Commands',
            d = 'Flutter Devices',
            e = 'Flutter Emulators',
            f = 'Find Files',
            F = 'Find Files (with dotfiles)',
            v = 'Find Files Preview',
            l = 'Flutter Outline Toggle',
            N = 'Notification History',
            b = 'Find Open Buffers',
            i = 'Builtin options',
            g = 'Find Text',
            o = 'Find Old Files',
            p = 'Find Plugins',
            n = 'Find Clipboard',
            q = 'Flutter Quit',
            R = 'Flutter Reload',
            r = 'Flutter run',
            t = 'Flutter Restart',
        },
        s = {
            name = 'Sessions',
            s = 'Save Session',
            l = 'Load Session',
            d = 'Delete Session',
            v = 'Split Vertical',
            h = 'Split Horizontal',
        },
        c = {
            name = 'LSP',
            a = 'CodeAction',
            f = 'Format Code',
            d = 'Code Diagnostics',
            D = 'Document Diagnostics',
            w = 'Workspace Diagnostics',
        },
        l = {
            name = 'SideBar',
            l = 'Open SideBar',
            u = 'Update SideBar',
            f = 'Focus SideBar',
        },
    },
})
