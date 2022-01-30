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

use({
    'lewis6991/impatient.nvim',
    config = function()
        require('impatient').enable_profile()
    end,
})
require('packer_compiled')
use('wbthomason/packer.nvim')

use('nvim-lua/plenary.nvim')
use('nvim-lua/popup.nvim')
use('ryanoasis/vim-devicons')
use({ 'kyazdani42/nvim-web-devicons', config = getSetup('nvim-web-devicons', { default = true }) })

-- visual
use({
    -- 'sainnhe/everforest',
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
        vim.g.rose_pine_variant = 'moon'
        vim.g.rose_pine_disable_italics = true
        vim.cmd([[colorscheme rose-pine]])
    end
})
use({ 'akinsho/bufferline.nvim', config = getConfig('bufferline') })
use({ 'nvim-lualine/lualine.nvim', config = getConfig('lualine') })
use({ 'akinsho/toggleterm.nvim', config = getConfig('term') })
use({ 'kyazdani42/nvim-tree.lua', config = getConfig('nvim-tree') })
use({
    'kevinhwang91/rnvimr',
    config = function()
        vim.g.rnvimr_ex_enable = 1
    end,
})
use('psliwka/vim-smoothie')
use({ 'luukvbaal/stabilize.nvim', config = getSetup('stabilize', {}) })
use('ibhagwan/fzf-lua')
use({ 'nvim-telescope/telescope.nvim', config = getConfig('telescope') })
use({ 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' })
use({ 'mhinz/vim-startify', config = getConfig('startify') })
use({
    'folke/which-key.nvim',
    config = function()
        getSetup('which-key', {})
        getConfig('whichkey-register')
    end,
})
use({
    'lukas-reineke/virt-column.nvim',
    config = function()
        require('virt-column').setup()
    end,
    after = 'rose-pine'
})
use('RRethy/vim-illuminate')
use({ 'lukas-reineke/indent-blankline.nvim', config = getConfig('blankline') })

-- devtools
use({
    'mattn/emmet-vim',
    config = function()
        vim.g.user_emmet_install_global = 0
        vim.g.user_emmet_leader_key = '<space>'
        vim.cmd([[autocmd FileType html,css EmmetInstall]])
    end,
})
use('ap/vim-css-color')
use({ 'neovim/nvim-lspconfig', config = getConfig('lsp.lsp') })
use('williamboman/nvim-lsp-installer')
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
use('tpope/vim-surround')
use({
    'haya14busa/incsearch.vim',
    config = function()
        vim.g['incsearch#auto_nohlsearch'] = 1
    end,
})
use({ 'numToStr/Comment.nvim', config = getSetup('Comment', {}) })
use({ 'phaazon/hop.nvim', config = getSetup('hop', {}) })
use('mhinz/vim-sayonara')
use({ 'Pocco81/AutoSave.nvim', config = getConfig('autosave') })
use('farmergreg/vim-lastplace')
use('dstein64/vim-startuptime')
use({ 'mg979/vim-visual-multi', branch = 'master' })
use('christoomey/vim-tmux-navigator')

if packer_bootstrap then
    require('packer').sync()
end
