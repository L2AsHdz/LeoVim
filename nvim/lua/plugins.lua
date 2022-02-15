local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({
        'git',
        'clone',
        '--depth',
        '1',
        'https://github.com/wbthomason/packer.nvim',
        install_path,
    })
    print('Installing packer, close and reopen Neovim...')
end

function getConfig(name)
    return string.format('require("config.%s")', name)
end

function getSetup(name, opts)
    local ok, req = pcall(require, name)
    if not ok then
        return
    else
        req.setup(opts)
    end
end

vim.cmd([[packadd packer.nvim]])

vim.cmd([[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerCompile
    augroup end
]])

-- Use a protected call so we dont weeoe out on first use
local status_ok, packer = pcall(require, 'packer')
if not status_ok then
    return
end

packer.init({
    enable = true,
    compile_path = '~/.config/nvim/lua/packer_compiled.lua',
    display = {
        open_fn = function()
            return require('packer.util').float({ border = 'rounded' })
        end,
    },
})

local use = packer.use
packer.reset()

use({ 'lewis6991/impatient.nvim' })
require('packer_compiled')
use('wbthomason/packer.nvim')

use('nvim-lua/plenary.nvim')
use('nvim-lua/popup.nvim')
use({ 'kyazdani42/nvim-web-devicons', config = getSetup('nvim-web-devicons', { default = true }) })

-- visual
use({
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
    config = function()
        -- vim.g.everforest_background = 'hard'
        -- vim.g.everforest_sign_column_background = 'none'
        require('rose-pine').setup({
            dark_variant = 'moon',
            dim_nc_background = true,
            disable_background = true,
            disable_italics = true
        })
        vim.cmd([[
            colorscheme rose-pine
            hi CursorLine guibg=#44415a
            hi Search guibg=#596275
        ]])
    end
})
use({ 'rcarriga/nvim-notify', config = getConfig('notify') })
use({ 'akinsho/bufferline.nvim', config = getConfig('bufferline') })
use({ 'nvim-lualine/lualine.nvim', config = getConfig('lualine') })
use({ 'sidebar-nvim/sidebar.nvim', config = getConfig('sidebar') })
use({ 'SmiteshP/nvim-gps', getSetup('nvim-gps', {})})
use({ 'akinsho/toggleterm.nvim', config = getConfig('term') })
use({ 'kyazdani42/nvim-tree.lua', config = getConfig('nvim-tree') })
use({
    'kevinhwang91/rnvimr',
    config = function()
        vim.g.rnvimr_ex_enable = 1
    end,
})
use({ 'karb94/neoscroll.nvim', config = getSetup('neoscroll', {}) })
use('dstein64/nvim-scrollview')
-- use({ 'luukvbaal/stabilize.nvim', config = getSetup('stabilize', {}) })
use({ 'nvim-telescope/telescope.nvim', config = getConfig('telescope') })
use({ 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' })
use({'goolord/alpha-nvim', config = getConfig('alpha')})
use({'antoinemadec/FixCursorHold.nvim'})
use({ 'Shatur/neovim-session-manager', config = getConfig('session')})
use({'stevearc/dressing.nvim', config = getConfig('dressing')})
use({ 'folke/which-key.nvim', config = getConfig('whichkey') })
use({
    'lukas-reineke/virt-column.nvim',
    config = function ()
        getSetup('virt-column', {})
        vim.cmd([[highlight VirtColumn guifg=#353b48]])
    end,
    after = 'rose-pine'
})
use('RRethy/vim-illuminate')
use({ 'lukas-reineke/indent-blankline.nvim', config = getConfig('blankline') })
use({'norcalli/nvim-colorizer.lua', config = getSetup('colorizer', {})})
use {
    'VonHeikemen/fine-cmdline.nvim',
    config = getSetup('fine-cmdline', {cmdline = { prompt = '濫' }, popup = { position = { row = '90%' } } }),
    requires = {
        {'MunifTanjim/nui.nvim'}
    }
}

-- devtools
use({ 'neovim/nvim-lspconfig', config = getConfig('lsp.lsp') })
use('williamboman/nvim-lsp-installer')
use({ 'folke/trouble.nvim', config = getSetup('trouble', {}) })
use({
    'hrsh7th/nvim-cmp',
    requires = {
        { 'hrsh7th/cmp-nvim-lsp' },
        { 'hrsh7th/cmp-cmdline' },
        { 'hrsh7th/cmp-path' },
        { 'hrsh7th/cmp-buffer' },
        { 'hrsh7th/cmp-nvim-lua' },
    },
    config = getConfig('cmp'),
})
use('L3MON4D3/LuaSnip')
use('saadparwaiz1/cmp_luasnip')
use('rafamadriz/friendly-snippets')
use({ 'jose-elias-alvarez/null-ls.nvim', config = getConfig('null-ls') })
use({
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = getConfig('treesitter'),
})
use('p00f/nvim-ts-rainbow')
-- use 'romgrk/nvim-treesitter-context'

-- gittools
use({ 'lewis6991/gitsigns.nvim', config = getConfig('gitsigns') })
use({ 'TimUntersberger/neogit', config = getConfig('neogit') })
use({
    'APZelos/blamer.nvim',
    config = function()
        vim.g.blamer_enabled = 1
        vim.g.blamer_delay = 750
    end,
})
use({
    'rhysd/git-messenger.vim',
    config = function()
        vim.cmd([[
        let g:git_messenger_floating_win_opts = { 'border': 'single' }
        let g:git_messenger_popup_content_margins = v:false
        ]])
    end,
})
use('sindrets/diffview.nvim')

-- utils
use({ 'windwp/nvim-autopairs', config = getConfig('autopairs') })
use('alvan/vim-closetag')
-- use('tpope/vim-surround')
use({'blackCauldron7/surround.nvim', config = getSetup('surround', { mappings_style = 'surround' })})
use('andymass/vim-matchup')
use({
    'haya14busa/incsearch.vim',
    config = function()
        vim.g['incsearch#auto_nohlsearch'] = 1
    end,
})
use({ 'numToStr/Comment.nvim', config = getSetup('Comment', {}) })
use({ 'phaazon/hop.nvim', config = getSetup('hop', {}) })
-- use('mhinz/vim-sayonara')
use({ 'Pocco81/AutoSave.nvim', config = getConfig('autosave') })
use({ 'ethanholz/nvim-lastplace', config = getSetup('nvim-lastplace', {}) })
use('dstein64/vim-startuptime')
use({ 'mg979/vim-visual-multi', branch = 'master' })
use({ 'numToStr/Navigator.nvim', config = getSetup('Navigator', {})})
use({ 'AckslD/nvim-neoclip.lua', config = getSetup('neoclip', {}) })
-- use('mbbill/undotree')
use('nathom/filetype.nvim')

if packer_bootstrap then
    require('packer').sync()
end
