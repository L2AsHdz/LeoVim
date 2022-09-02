return {
    { 'Shatur/neovim-session-manager', cmd = 'SessionManager', config = G_getConfig('session') },
    { 'windwp/nvim-autopairs', event = 'InsertEnter', config = G_getConfig('autopairs') },
    { 'windwp/nvim-ts-autotag' },
    { 'kylechui/nvim-surround', config = G_getSetup('nvim-surround', {}) },
    { 'abecodes/tabout.nvim', config = G_getSetup('tabout', { act_as_shift_tab = true }) },
    {
        'andymass/vim-matchup',
        event = 'VimEnter',
        config = function()
            local hl = require('utils.core').hl
            vim.g.matchup_matchparen_offscreen = {}
            hl('MatchParen', { fg = '#f6c177', bold = true })
            hl('MatchWord', { link = 'IlluminatedWordText' })
        end,
    },
    { 'kevinhwang91/nvim-hlslens', config = G_getSetup('hlslens', { calm_down = true, nearest_only = true }) },
    { 'numToStr/Comment.nvim', keys = { 'g', '<ESC>', 'v', 'V', '<C-v>' }, config = G_getConfig('comment') },
    { 'JoosepAlviste/nvim-ts-context-commentstring' },
    {
        'phaazon/hop.nvim',
        cmd = { 'HopWord', 'HopPattern', 'HopChar1', 'HopChar2', 'HopLine', 'HopLineStart' },
        setup = G_getSetup('hop', {}),
    },
    { 'https://gitlab.com/yorickpeterse/nvim-window.git', module = 'nvim-window' },
    { 'lewis6991/spaceless.nvim', config = G_getSetup('spaceless', {}) },
    { 'kwkarlwang/bufresize.nvim' },
    {
        'mrjones2014/smart-splits.nvim',
        module = 'smart-splits',
        config = G_getSetup('smart-splits', {
            resize_mode = {
                hooks = {
                    on_leave = require('bufresize').register,
                },
            },
        }),
    },
    { 'sindrets/winshift.nvim', module = 'winshift' },
    { 'famiu/bufdelete.nvim', cmd = 'Bdelete' },
    { 'nacro90/numb.nvim', config = G_getSetup('numb', {}) },
    { 'Pocco81/auto-save.nvim', config = G_getConfig('autosave') },
    { 'ethanholz/nvim-lastplace', config = G_getSetup('nvim-lastplace', {}) },
    {
        'gbprod/cutlass.nvim',
        config = G_getSetup('cutlass', { cut_key = 't', exclude = { 'ns', 'nS', 'nx', 'nX', 'xx' } }),
    },
    { 'gbprod/substitute.nvim', event = 'TextYankPost', config = G_getSetup('substitute', {}) },
    { 'dstein64/vim-startuptime', cmd = 'StartupTime' },
    { 'mg979/vim-visual-multi', branch = 'master' },
    { 'ghillb/cybu.nvim', cmd = { 'CybuLastusedPrev', 'CybuLastusedNext' }, config = G_getConfig('cybu') },
    { 'max397574/better-escape.nvim', config = G_getSetup('better_escape', { mapping = { 'ii' } }) },
    {
        'jghauser/fold-cycle.nvim',
        module = 'fold-cycle',
        config = G_getSetup('fold-cycle', { open_if_max_closed = false, close_if_max_opened = false }),
    },
    --[[ { 'AckslD/nvim-neoclip.lua', config = G_getSetup('neoclip', {}) }, ]]
}
