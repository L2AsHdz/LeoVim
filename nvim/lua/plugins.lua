local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

print 'Installing packer, close and reopen Neovim...'
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
    use 'kyazdani42/nvim-web-devicons'

    -- visual
    use 'artanikin/vim-synthwave84'
    use {'dracula/vim', as = 'dracula' }
    use 'ghifarit53/tokyonight-vim'
    use 'akinsho/bufferline.nvim'
    use 'nvim-lualine/lualine.nvim'
    use 'numToStr/FTerm.nvim'
    use 'kyazdani42/nvim-tree.lua'
    use 'kevinhwang91/rnvimr'
    use 'psliwka/vim-smoothie'
    use 'luukvbaal/stabilize.nvim'
    use 'ibhagwan/fzf-lua'
    use 'mhinz/vim-startify'
    use 'folke/which-key.nvim'
    use 'lukas-reineke/virt-column.nvim'
    use 'RRethy/vim-illuminate'
    use 'lukas-reineke/indent-blankline.nvim'

    -- devtools
    use 'mattn/emmet-vim'
    use 'ap/vim-css-color'
    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-buffer'
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use 'rafamadriz/friendly-snippets'

    -- gittools
    use 'lewis6991/gitsigns.nvim'
    use 'TimUntersberger/neogit'
    use 'APZelos/blamer.nvim'
    use 'rhysd/git-messenger.vim'
    use 'sindrets/diffview.nvim'
    use 'stsewd/fzf-checkout.vim'

    -- utils
    use 'jiangmiao/auto-pairs'
    use 'alvan/vim-closetag'
    use 'tpope/vim-surround'
    use 'haya14busa/incsearch.vim'
    use 'tpope/vim-commentary'
    use 'phaazon/hop.nvim'
    use 'mhinz/vim-sayonara'
    use 'Pocco81/AutoSave.nvim'
    use 'farmergreg/vim-lastplace'
    use 'dstein64/vim-startuptime'
    use {'mg979/vim-visual-multi', branch = 'master'}
    use 'christoomey/vim-tmux-navigator'

    if packer_bootstrap then
        require('packer').sync()
    end
end)

