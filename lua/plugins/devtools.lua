return {
    { 'neovim/nvim-lspconfig', config = G_getConfig('lsp') },
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    {
        'hrsh7th/nvim-cmp',
        requires = {
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-cmdline' },
            { 'hrsh7th/cmp-path' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-nvim-lua' },
            { 'saadparwaiz1/cmp_luasnip' },
        },
        config = G_getConfig('cmp'),
    },
    { 'L3MON4D3/LuaSnip' },
    { 'rafamadriz/friendly-snippets' },
    { 'folke/lua-dev.nvim' },
    { 'ray-x/lsp_signature.nvim', config = G_getSetup('lsp_signature', { hint_prefix = ' ' }) },
    { 'jose-elias-alvarez/null-ls.nvim', config = G_getConfig('null-ls') },
    { 'ThePrimeagen/refactoring.nvim', config = G_getSetup('refactoring', {}) },
    {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = G_getConfig('treesitter'),
    },
    { 'nvim-treesitter/nvim-treesitter-context', config = G_getConfig('ts-context') },
    { 'nvim-treesitter/nvim-treesitter-textobjects' },
    { 'p00f/nvim-ts-rainbow' },
    { 'RRethy/nvim-treesitter-endwise' },
    { 'haringsrob/nvim_context_vt', config = G_getSetup('nvim_context_vt', { prefix = '──' }),},
    -- { 'yioneko/nvim-yati' },
    { 'm-demare/hlargs.nvim', config = G_getSetup('hlargs', {}) },
    { 'folke/trouble.nvim', config = G_getSetup('trouble', {}) },
    { 'NTBBloodbath/rest.nvim', ft = 'http' },
    { 'windwp/nvim-spectre', event = 'BufReadPre', config = G_getSetup('spectre', {}) },
    -- {
    --     'akinsho/flutter-tools.nvim',
    --     ft = { 'flutter', 'dart' },
    --     config = G_getConfig('flutter'),
    -- },
    {
        'michaelb/sniprun',
        run = 'bash ./install.sh',
        config = G_getSetup('sniprun', { display = { 'TempFloatingWindow' } }),
    },
    { 'CRAG666/code_runner.nvim', config = G_getConfig('code-runner') },
    { 'monaqa/dial.nvim', config = G_getConfig('dial') },
    { 'gpanders/editorconfig.nvim' },
}
