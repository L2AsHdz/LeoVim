" Autoinstalacion de Plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugins')

"Icons for neovim
"https://github.com/ryanoasis/vim-devicons
Plug 'ryanoasis/vim-devicons'
"https://github.com/kyazdani42/nvim-web-devicons
Plug 'kyazdani42/nvim-web-devicons'

"https://github.com/nvim-lua/plenary.nvim
Plug 'nvim-lua/plenary.nvim'

so ~/.config/nvim/visual.vim
so ~/.config/nvim/devtools.vim
so ~/.config/nvim/gittools.vim
so ~/.config/nvim/utils.vim

"Airline & airline-themes
"Status bar and themes for it, for neovim
"https://github.com/vim-airline/vim-airline
"https://github.com/vim-airline/vim-airline-themes
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'

" NerdTree
"The NERDTree is a file system explorer for the Vim editor
"https://github.com/preservim/nerdtree
"https://github.com/Xuyuanp/nerdtree-git-plugin
"https://github.com/tiagofumo/vim-nerdtree-syntax-highlight
" Plug 'preservim/nerdtree' " File system explorer for vim
" Plug 'Xuyuanp/nerdtree-git-plugin' " Show git status on NERDTree
"Plug 'kyazdani42/nvim-tree.lua' Plug 'tiagofumo/vim-nerdtree-syntax-highlight' "Syntax for common file extendions

" Plug 'easymotion/vim-easymotion'
" Plug 'haya14busa/incsearch-easymotion.vim'

call plug#end()
