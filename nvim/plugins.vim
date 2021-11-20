
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugins')

" Themes
Plug 'ghifarit53/tokyonight-vim' " Theme for neovim

Plug 'vim-airline/vim-airline' " StatusBar for neovim
Plug 'vim-airline/vim-airline-themes' " Themes for airline

" Syntax
Plug 'sheerun/vim-polyglot' " Resaltado de sintaxis

" Tree
Plug 'preservim/nerdtree' " File system explorer for vim
Plug 'Xuyuanp/nerdtree-git-plugin' " Show git status on NERDTree

" Typing
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'

" Autocomplete
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'ryanoasis/vim-devicons' " Icons for plugins neovim
Plug 'christoomey/vim-tmux-navigator' " Navegacion entre pestañas
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Snippets and adittional text editing support

call plug#end()