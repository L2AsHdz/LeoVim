return {
    { 'lewis6991/impatient.nvim' },
    { 'wbthomason/packer.nvim' },
    { 'nvim-lua/plenary.nvim', module = 'plenary' },
    { 'folke/lua-dev.nvim', module = 'lua-dev' },
    { 'nvim-lua/popup.nvim' },
    { 'antoinemadec/FixCursorHold.nvim' },
    {
        'kyazdani42/nvim-web-devicons',
        module = 'nvim-web-devicons',
        config = G_getSetup('nvim-web-devicons', {}),
    },
    { 'milisims/nvim-luaref' },
}
