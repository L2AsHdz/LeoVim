return {
    {
        -- 'sainnhe/everforest',
        --  'marko-cerovac/material.nvim'
        --  'navarasu/onedark.nvim'
        -- 'ghifarit53/tokyonight-vim'
        -- 'frenzyexists/aquarium-vim'
        -- "catppuccin/nvim",
        -- as = "catppuccin"
        -- 'dracula/vim',
        -- as = "dracula",
        'rose-pine/neovim',
        as = 'rose-pine',
        config = G_getConfig('colorscheme'),
    },
    { 'rcarriga/nvim-notify', config = G_getConfig('notify') },
    {
        'akinsho/bufferline.nvim',
        tag = 'v2.*',
        event = 'BufReadPre',
        config = G_getConfig('bufferline'),
    },
    { 'nvim-lualine/lualine.nvim', event = 'VimEnter', config = G_getConfig('lualine') },
    -- { 'b0o/incline.nvim', config = G_getSetup('incline', {}) },
    { 'j-hui/fidget.nvim', config = G_getSetup('fidget', { text = { spinner = 'moon' } }) },
    -- { 'sidebar-nvim/sidebar.nvim', config = getConfig('sidebar') },
    { 'simrat39/symbols-outline.nvim', cmd = 'SymbolsOutline' },
    { 'SmiteshP/nvim-navic' },
    { 'akinsho/toggleterm.nvim', tag = 'v2.*', config = G_getConfig('term') },
    { 'kyazdani42/nvim-tree.lua', config = G_getConfig('nvim-tree') },
    {
        'kevinhwang91/rnvimr',
        config = function()
            vim.g.rnvimr_enable_ex = 1
            vim.g.rnvimr_enable_picker = 1
        end,
    },
    {
        'karb94/neoscroll.nvim',
        config = G_getSetup('neoscroll', { mappings = { '<C-u>', '<C-d>', '<C-b>', '<C-f>', '<C-y>', '<C-e>' } }),
    },
    {
        'declancm/cinnamon.nvim',
        module = 'cinnamon',
        config = G_getSetup('cinnamon', {
            default_keymaps = false,
            centered = true,
            hide_cursor = true,
            always_scroll = true,
        }),
    },
    { 'dstein64/nvim-scrollview' },
    -- { 'luukvbaal/stabilize.nvim', config = G_getSetup('stabilize', {}) },
    { 'nvim-telescope/telescope.nvim', config = G_getConfig('telescope') },
    { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
    { 'nvim-telescope/telescope-packer.nvim' },
    { 'goolord/alpha-nvim', config = G_getConfig('alpha') },
    { 'stevearc/dressing.nvim', config = G_getConfig('dressing') },
    { 'kevinhwang91/nvim-bqf', ft = 'qf' },
    { 'folke/which-key.nvim', event = 'VimEnter', config = G_getConfig('whichkey') },
    {
        'lukas-reineke/virt-column.nvim',
        event = 'BufReadPre',
        config = function()
            G_getSetup('virt-column', {})
            require('utils.core').hl('VirtColumn', { fg = '#353b48' })
        end,
        after = 'rose-pine',
    },
    { 'RRethy/vim-illuminate', config = G_getConfig('cursorline') },
    { 'edluffy/specs.nvim', config = G_getConfig('specs') },
    { 'lukas-reineke/indent-blankline.nvim', event = 'BufReadPre', config = G_getConfig('blankline') },
    { 'folke/todo-comments.nvim', config = G_getSetup('todo-comments', {}) },
    { 'LudoPinelli/comment-box.nvim' },
    {
        'VonHeikemen/fine-cmdline.nvim',
        config = G_getSetup('fine-cmdline', { cmdline = { prompt = '???' }, popup = { position = { row = '90%' } } }),
        requires = {
            { 'MunifTanjim/nui.nvim' },
        },
    },
    { 'VonHeikemen/searchbox.nvim', requires = 'MunifTanjim/nui.nvim' },
    { 'norcalli/nvim-colorizer.lua', event = 'BufReadPre', config = G_getSetup('colorizer', { '*' }) },
    {
        'iamcco/markdown-preview.nvim',
        ft = 'markdown',
        cmd = 'MarkDownPreview',
        config = function()
            vim.g.mkdp_port = '9000'
        end,
    },
    {
        'anuvyklack/pretty-fold.nvim',
        requires = 'anuvyklack/nvim-keymap-amend',
        config = function()
            G_getSetup('pretty-fold', { fill_char = '???' })
            G_getSetup('pretty-fold.preview', {})
        end,
    },
}
