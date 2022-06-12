local fn = vim.fn
local ag = vim.api.nvim_create_augroup
local ac = vim.api.nvim_create_autocmd
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

vim.api.nvim_command('packadd packer.nvim')

local group = ag('packer_user_config', { clear = true })
ac('BufWritePost', {
    group = group,
    pattern = 'plugins.lua',
    command = 'source <afile> | PackerCompile',
})

local status_ok, packer = pcall(require, 'packer')
if not status_ok then
    return
end

packer.init({
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

use({ 'nvim-lua/plenary.nvim', module = 'plenary' })
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
    config = getConfig('colorscheme'),
})
use({ 'rcarriga/nvim-notify', config = getConfig('notify') })
use({
    'akinsho/bufferline.nvim',
    tag = 'v2.*',
    event = 'BufReadPre',
    config = getConfig('bufferline'),
})
use({ 'nvim-lualine/lualine.nvim', event = 'VimEnter', config = getConfig('lualine') })
use({ 'j-hui/fidget.nvim', config = getSetup('fidget', { text = { spinner = 'moon' } }) })
-- use({ 'sidebar-nvim/sidebar.nvim', config = getConfig('sidebar') })
use({ 'simrat39/symbols-outline.nvim', cmd = 'SymbolsOutline' })
use('SmiteshP/nvim-navic')
use({ 'akinsho/toggleterm.nvim', tag = 'v2.*', config = getConfig('term') })
use({ 'kyazdani42/nvim-tree.lua', config = getConfig('nvim-tree') })
use({
    'kevinhwang91/rnvimr',
    config = function()
        vim.g.rnvimr_ex_enable = 1
        vim.g.rnvimr_enable_picker = 1
    end,
})
use({ 'karb94/neoscroll.nvim', config = getSetup('neoscroll', {}) })
use({
    'declancm/cinnamon.nvim',
    module = 'cinnamon',
    config = getSetup('cinnamon', {
        default_keymaps = false,
        centered = false,
    }),
})
use('dstein64/nvim-scrollview')
use({ 'luukvbaal/stabilize.nvim', config = getSetup('stabilize', {}) })
use({ 'nvim-telescope/telescope.nvim', config = getConfig('telescope') })
use({ 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' })
use('nvim-telescope/telescope-packer.nvim')
use({ 'goolord/alpha-nvim', config = getConfig('alpha') })
use({ 'stevearc/dressing.nvim', config = getConfig('dressing') })
use({ 'kevinhwang91/nvim-bqf', ft = 'qf' })
use({ 'folke/which-key.nvim', event = 'VimEnter', config = getConfig('whichkey') })
use({
    'lukas-reineke/virt-column.nvim',
    event = 'BufReadPre',
    config = function()
        getSetup('virt-column', {})
        vim.cmd([[highlight VirtColumn guifg=#353b48]])
    end,
    after = 'rose-pine',
})
use({ 'RRethy/vim-illuminate', config = getConfig('cursorline') })
use({ 'lukas-reineke/indent-blankline.nvim', event = 'BufReadPre', config = getConfig('blankline') })
use({
    'VonHeikemen/fine-cmdline.nvim',
    config = getSetup('fine-cmdline', { cmdline = { prompt = '濫' }, popup = { position = { row = '90%' } } }),
    requires = {
        { 'MunifTanjim/nui.nvim' },
    },
})
use({
    'VonHeikemen/searchbox.nvim',
    requires = {
        { 'MunifTanjim/nui.nvim' },
    },
})
use({ 'norcalli/nvim-colorizer.lua', event = 'BufReadPre', config = getSetup('colorizer', { '*' }) })
use({
    'iamcco/markdown-preview.nvim',
    ft = 'markdown',
    cmd = 'MarkDownPreview',
    config = function()
        vim.g.mkdp_port = '9000'
    end,
})

-- devtools
use({ 'neovim/nvim-lspconfig', config = getConfig('lsp') })
use('williamboman/nvim-lsp-installer')
use({
    'hrsh7th/nvim-cmp',
    requires = {
        { 'hrsh7th/cmp-nvim-lsp' },
        { 'hrsh7th/cmp-cmdline' },
        { 'hrsh7th/cmp-path' },
        { 'hrsh7th/cmp-buffer' },
        { 'hrsh7th/cmp-nvim-lua' },
        { 'hrsh7th/cmp-nvim-lsp-signature-help' },
        { 'saadparwaiz1/cmp_luasnip' },
    },
    config = getConfig('cmp'),
})
use('L3MON4D3/LuaSnip')
use('rafamadriz/friendly-snippets')
use({ 'jose-elias-alvarez/null-ls.nvim', config = getConfig('null-ls') })
use({ 'ThePrimeagen/refactoring.nvim', config = getSetup('refactoring', {}) })
use({
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = getConfig('treesitter'),
})
use({ 'nvim-treesitter/nvim-treesitter-context', config = getConfig('ts-context') })
use('nvim-treesitter/nvim-treesitter-textobjects')
use('p00f/nvim-ts-rainbow')
use('RRethy/nvim-treesitter-endwise')
use('yioneko/nvim-yati')
use({ 'm-demare/hlargs.nvim', config = getSetup('hlargs', {}) })
use({ 'folke/trouble.nvim', config = getSetup('trouble', {}) })
use({ 'NTBBloodbath/rest.nvim', ft = 'http' })
use({ 'nvim-pack/nvim-spectre', event = 'BufReadPre', config = getSetup('spectre', {}) })
use({
    'akinsho/flutter-tools.nvim',
    ft = { 'flutter', 'dart' },
    config = getConfig('flutter'),
})
use({
    'michaelb/sniprun',
    run = 'bash ./install.sh',
    config = getSetup('sniprun', { display = { 'Classic' } }),
})
use({ 'CRAG666/code_runner.nvim', config = getConfig('code-runner') })
use('gpanders/editorconfig.nvim')

-- gittools
use({ 'lewis6991/gitsigns.nvim', event = 'BufReadPre', config = getConfig('gitsigns') })
use({ 'TimUntersberger/neogit', cmd = 'Neogit', config = getConfig('neogit') })
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
        vim.g.git_messenger_floating_win_opts = { border = 'single' }
        vim.g.git_messenger_popup_content_margins = false
    end,
})
use('sindrets/diffview.nvim')

-- utils
use({ 'antoinemadec/FixCursorHold.nvim' })
use({ 'Shatur/neovim-session-manager', config = getConfig('session') })
use({ 'windwp/nvim-autopairs', config = getConfig('autopairs') })
use({ 'windwp/nvim-ts-autotag' })
use({ 'blackCauldron7/surround.nvim', config = getSetup('surround', { mappings_style = 'surround' }) })
use({ 'andymass/vim-matchup', event = 'VimEnter' })
use({ 'kevinhwang91/nvim-hlslens', getSetup('hlslens', { calm_down = true, nearest_only = true }) })
use({ 'numToStr/Comment.nvim', config = getConfig('comment') })
use('JoosepAlviste/nvim-ts-context-commentstring')
use({ 'phaazon/hop.nvim', config = getSetup('hop', {}) })
use('famiu/bufdelete.nvim')
use({ 'Pocco81/AutoSave.nvim', config = getConfig('autosave') })
use({ 'ethanholz/nvim-lastplace', config = getSetup('nvim-lastplace', {}) })
use({ 'gbprod/cutlass.nvim', config = getSetup('cutlass', { cut_key = 't', exclude = { 'ns', 'nS' } }) })
use({ 'gbprod/substitute.nvim', config = getSetup('substitute', { yank_substituted_text = true }) })
-- use({ 'gbprod/yanky.nvim', config = getSetup('yanky', {}) })
use({ 'dstein64/vim-startuptime', cmd = 'StartupTime' })
use({ 'mg979/vim-visual-multi', branch = 'master' })
-- use({ 'numToStr/Navigator.nvim', config = getSetup('Navigator', {}) })
use({ 'ghillb/cybu.nvim', config = getSetup('cybu', { display_time = 1000 }) })
use({ 'max397574/better-escape.nvim', config = getSetup('better_escape', { mapping = { 'ii' } }) })
use({ 'AckslD/nvim-neoclip.lua', config = getSetup('neoclip', {}) })
use('nathom/filetype.nvim')

if packer_bootstrap then
    require('packer').sync()
end
