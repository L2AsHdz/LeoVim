" Autoinstalacion de Plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugins')

" Themes
" Theme for neovim
" https://github.com/ghifarit53/tokyonight-vim
Plug 'ghifarit53/tokyonight-vim'

"Airline & airline-themes
"Status bar and themes for it, for neovim
"https://github.com/vim-airline/vim-airline
"https://github.com/vim-airline/vim-airline-themes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"vim-polyglot
"A collection of language packs for Vim
"https://github.com/sheerun/vim-polyglot
Plug 'sheerun/vim-polyglot' " Resaltado de sintaxis

" NerdTree
"The NERDTree is a file system explorer for the Vim editor
"https://github.com/preservim/nerdtree
"https://github.com/Xuyuanp/nerdtree-git-plugin
Plug 'preservim/nerdtree' " File system explorer for vim
Plug 'Xuyuanp/nerdtree-git-plugin' " Show git status on NERDTree

"rnvimr
"Rnvimr is a NeoVim plugin that allows you to use Ranger in a floating window
"https://github.com/kevinhwang91/rnvimr
Plug 'kevinhwang91/rnvimr'

" Typing
" https://github.com/jiangmiao/auto-pairs
Plug 'jiangmiao/auto-pairs'
"https://github.com/alvan/vim-closetag
Plug 'alvan/vim-closetag'
"https://github.com/tpope/vim-surround
Plug 'tpope/vim-surround'

" Autocomplete
" https://github.com/SirVer/ultisnips
Plug 'SirVer/ultisnips'
"https://github.com/honza/vim-snippets
Plug 'honza/vim-snippets'

"Icons for neovim
"https://github.com/ryanoasis/vim-devicons
Plug 'ryanoasis/vim-devicons'

"TmuxNavigator
"The plugin will allow you to navigate seamlessly between vim and tmux splits using a consistent set of hotkeys
"https://github.com/christoomey/vim-tmux-navigator
Plug 'christoomey/vim-tmux-navigator' " Navegacion entre pestañas

"ConquerOfCompletion
"True snippet and additional text editing support
"https://github.com/neoclide/coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Snippets and adittional text editing support

" Plug 'easymotion/vim-easymotion'
" Plug 'haya14busa/incsearch-easymotion.vim'

" Busqueda
Plug 'haya14busa/incsearch.vim'

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

"Sayonara
Plug 'mhinz/vim-sayonara', { 'on': 'Sayonara' }

"fzf-checkout
Plug 'stsewd/fzf-checkout.vim'

"targets.vim
" Plug 'wellle/targets.vim'

"Autosave
"A NeoVim plugin for saving your work before the world collapses or you type :qa!
"https://github.com/Pocco81/AutoSave.nvim
Plug 'Pocco81/AutoSave.nvim'

call plug#end()
