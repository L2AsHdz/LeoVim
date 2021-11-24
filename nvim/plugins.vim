" Autoinstalacion de Plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugins')

" Themes
Plug 'ghifarit53/tokyonight-vim' " Theme for neovim

" Airline
Plug 'vim-airline/vim-airline' " StatusBar for neovim
Plug 'vim-airline/vim-airline-themes' " Themes for airline

" Syntax
Plug 'sheerun/vim-polyglot' " Resaltado de sintaxis

" Tree
Plug 'preservim/nerdtree' " File system explorer for vim
Plug 'Xuyuanp/nerdtree-git-plugin' " Show git status on NERDTree
Plug 'kevinhwang91/rnvimr'

" Typing
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'

" Autocomplete
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" IDE
" Plug 'easymotion/vim-easymotion'
Plug 'ryanoasis/vim-devicons' " Icons for plugins neovim
Plug 'christoomey/vim-tmux-navigator' " Navegacion entre pestañas
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Snippets and adittional text editing support

" Busqueda
Plug 'haya14busa/incsearch.vim'
" Plug 'haya14busa/incsearch-easymotion.vim'

"Comentarios
Plug 'tpope/vim-commentary'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'jreybert/vimagit'

Plug 'phaazon/hop.nvim'

"fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"mutiple-cursors
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

"IdentLine
Plug 'Yggdroot/indentLine'

"Emmet
Plug 'mattn/emmet-vim'

"Startify
Plug 'mhinz/vim-startify'

call plug#end()
