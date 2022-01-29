local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    print 'Installing packer, close and reopen Neovim...'
end

function getConfig(name)
    return string.format("require(\"config.%s\")", name)
end

function getSetup(name, opts)
    local ok, req = pcall(require, name)
    if not ok then
        return
    else
        req.setup(opts)
    end
end

vim.cmd [[packadd packer.nvim]]

vim.cmd ([[
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

packer.init {
    display = {
        open_fn = function ()
            return require('packer.util').float {border = 'rounded' }
        end,
    },
}

return packer.startup(function (use)
    use 'wbthomason/packer.nvim'

    use 'nvim-lua/plenary.nvim'
    use 'nvim-lua/popup.nvim'
    use 'ryanoasis/vim-devicons'
    use { 'kyazdani42/nvim-web-devicons', config = getSetup('nvim-web-devicons', {default = true}) }

    -- visual
    use 'artanikin/vim-synthwave84'
    use {
            'dracula/vim',
            as = 'dracula',
            config = function()
                -- vim.g.tokyonight_style = 'night'
                -- vim.g.tokyonight_enable_italic = 1
                vim.cmd [[colorscheme dracula]]
            end
        }
    use 'ghifarit53/tokyonight-vim'
    use { 'akinsho/bufferline.nvim', config = getConfig('bufferline'), event = 'BufReadPre' }
    use { 'nvim-lualine/lualine.nvim', config = getConfig('lualine'), event = 'VimEnter' }
    use 'numToStr/FTerm.nvim'
    use { 'kyazdani42/nvim-tree.lua', config = getConfig('nvim-tree') }
    use {
            'kevinhwang91/rnvimr',
            config = function ()
                vim.g.rnvimr_ex_enable = 1
            end
        }
    use 'psliwka/vim-smoothie'
    use { 'luukvbaal/stabilize.nvim', config = getSetup('stabilize', {}) }
    use 'ibhagwan/fzf-lua'
    use { 'nvim-telescope/telescope.nvim', config = getConfig('telescope') }
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use { 'mhinz/vim-startify', config = getConfig('startify') }
    use {
        'folke/which-key.nvim',
        config = function()
            getSetup('which-key', {})
            getConfig('whichkey-register')
        end,
        event = 'VimEnter'
    }
    use {
            'lukas-reineke/virt-column.nvim',
            config = function ()
                require('virt-column').setup()
            end,
            after = 'dracula'
        }
    use { 'RRethy/vim-illuminate', event = 'CursorHold' }
    use { 'lukas-reineke/indent-blankline.nvim', config = getConfig('blankline'), event = 'BufReadPre' }

    -- devtools
    use {
            'mattn/emmet-vim',
            config = function ()
                vim.g.user_emmet_install_global = 0
                vim.g.user_emmet_leader_key ='<space>'
                vim.cmd [[autocmd FileType html,css EmmetInstall]]
            end
        }
    use 'ap/vim-css-color'
    use { 'neovim/nvim-lspconfig', config = getConfig('lsp.lsp') }
    use 'williamboman/nvim-lsp-installer'
    use {
        'hrsh7th/nvim-cmp',
        requires = {
            {'hrsh7th/cmp-nvim-lsp'}, {'hrsh7th/cmp-cmdline'}, {'hrsh7th/cmp-path'},
            {'hrsh7th/cmp-buffer'}, { 'hrsh7th/cmp-nvim-lua' }
        },
        config = getConfig('cmp')
    }
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use 'rafamadriz/friendly-snippets'
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = getConfig('treesitter')
    }
    use 'p00f/nvim-ts-rainbow'
    -- use 'romgrk/nvim-treesitter-context'

    -- gittools
    use { 'lewis6991/gitsigns.nvim', config = getConfig('gitsigns'), event = 'BufReadPre' }
    use { 'TimUntersberger/neogit', config = getConfig('neogit') }
    use {
            'APZelos/blamer.nvim',
            config = function ()
                vim.g.blamer_enabled = 1
                vim.g.blamer_delay = 750
            end
        }
    use {
            'rhysd/git-messenger.vim',
            config = function ()
                vim.cmd [[
                    let g:git_messenger_floating_win_opts = { 'border': 'single' }
                    let g:git_messenger_popup_content_margins = v:false
                ]]
            end
        }
    use 'sindrets/diffview.nvim'

    -- utils
    use { 'windwp/nvim-autopairs', config = getConfig('autopairs') }
    use 'alvan/vim-closetag'
    use 'tpope/vim-surround'
    use {
            'haya14busa/incsearch.vim',
            config = function ()
                vim.g['incsearch#auto_nohlsearch'] = 1
            end
        }
    use 'tpope/vim-commentary'
    use { 'phaazon/hop.nvim', config = getSetup('hop', {}) }
    use 'mhinz/vim-sayonara'
    use { 'Pocco81/AutoSave.nvim', config = getConfig('autosave') }
    use 'farmergreg/vim-lastplace'
    use 'dstein64/vim-startuptime'
    use {'mg979/vim-visual-multi', branch = 'master'}
    use 'christoomey/vim-tmux-navigator'

    if packer_bootstrap then
        require('packer').sync()
    end
end)

