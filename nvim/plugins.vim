" Autoinstalacion de Plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugins')

" Themes
" Theme for neovim
"https://github.com/artanikin/vim-synthwave84
Plug 'artanikin/vim-synthwave84'
"https://github.com/dracula/vim
Plug 'dracula/vim', { 'as': 'dracula' }
"https://github.com/ghifarit53/tokyonight-vim
Plug 'ghifarit53/tokyonight-vim'

"Icons for neovim
"https://github.com/ryanoasis/vim-devicons
Plug 'ryanoasis/vim-devicons'
"https://github.com/kyazdani42/nvim-web-devicons
Plug 'kyazdani42/nvim-web-devicons'

"Bufferline
"https://github.com/akinsho/bufferline.nvim
Plug 'akinsho/bufferline.nvim'

Plug 'dstein64/vim-startuptime'

"Lualine
Plug 'nvim-lualine/lualine.nvim'

"Airline & airline-themes
"Status bar and themes for it, for neovim
"https://github.com/vim-airline/vim-airline
"https://github.com/vim-airline/vim-airline-themes
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'

"vim-polyglot
"A collection of language packs for Vim
"https://github.com/sheerun/vim-polyglot
Plug 'sheerun/vim-polyglot' " Resaltado de sintaxis

" NerdTree
"The NERDTree is a file system explorer for the Vim editor
"https://github.com/preservim/nerdtree
"https://github.com/Xuyuanp/nerdtree-git-plugin
"https://github.com/tiagofumo/vim-nerdtree-syntax-highlight
" Plug 'preservim/nerdtree' " File system explorer for vim
" Plug 'Xuyuanp/nerdtree-git-plugin' " Show git status on NERDTree
"Plug 'kyazdani42/nvim-tree.lua' Plug 'tiagofumo/vim-nerdtree-syntax-highlight' "Syntax for common file extendions

"nvim-tree
"A File Explorer For Neovim Written In Lua
"https://github.com/kyazdani42/nvim-tree.lua
Plug 'kyazdani42/nvim-tree.lua'

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

"TmuxNavigator
"The plugin will allow you to navigate seamlessly between vim and tmux splits using a consistent set of hotkeys
"https://github.com/christoomey/vim-tmux-navigator
Plug 'christoomey/vim-tmux-navigator' " Navegacion entre pestañas

"vim-smothie
"Smooth scrolling for Vim done right
"https://github.com/psliwka/vim-smoothie
Plug 'psliwka/vim-smoothie'

"stabilize.nvim
"Neovim plugin to stabilize buffer content on window open/close events
"https://github.com/luukvbaal/stabilize.nvim
Plug 'luukvbaal/stabilize.nvim'

"ConquerOfCompletion
"True snippet and additional text editing support
"https://github.com/neoclide/coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Snippets and adittional text editing support

"ALE
"Is a plugin providing linting (syntax checking and semantic errors) in NeoVim
"https://github.com/dense-analysis/ale
Plug 'dense-analysis/ale'

" Plug 'easymotion/vim-easymotion'
" Plug 'haya14busa/incsearch-easymotion.vim'

"Busqueda
"Provides simple improved incremental searching
"https://github.com/haya14busa/incsearch.vim
Plug 'haya14busa/incsearch.vim'

"Comentarios
"Comment and uncomment
"https://github.com/tpope/vim-commentary
Plug 'tpope/vim-commentary'

"gitgutter
"https://github.com/airblade/vim-gitgutter
Plug 'airblade/vim-gitgutter'

"vimagit
"Ease your git workflow within vim
"https://github.com/jreybert/vimagit
Plug 'jreybert/vimagit'

"Blamer
"A git blame plugin for (neo)vim inspired by VS Code's GitLens plugin
"https://github.com/APZelos/blamer.nvim
Plug 'APZelos/blamer.nvim'

"git-messenger
"Reveal the hidden message from Git under the cursor quickly
"https://github.com/rhysd/git-messenger.vim
Plug 'rhysd/git-messenger.vim'

"Hop
"Neovim motions on speed!
"https://github.com/phaazon/hop.nvim
Plug 'phaazon/hop.nvim'

"rename-vim
"Rename a buffer
"https://github.com/danro/rename.vim
Plug 'danro/rename.vim'

"fzf
"General-purpose command-line fuzzy finder.
"https://github.com/junegunn/fzf.vim
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"fzf-checkout
"Manage branches and tags with fzf
"https://github.com/stsewd/fzf-checkout.vim
Plug 'stsewd/fzf-checkout.vim'

"mutiple-cursors
"https://github.com/mg979/vim-visual-multi
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

"IdentLine
"https://github.com/Yggdroot/indentLine
Plug 'Yggdroot/indentLine'

"Emmet
"Provides support for expanding abbreviations similar to emmet
"https://github.com/mattn/emmet-vim
Plug 'mattn/emmet-vim'

"CssColor
"A very fast, multi-syntax context-sensitive color name highlighter
"https://github.com/ap/vim-css-color
Plug 'ap/vim-css-color'

"Startify
"Provides a start screen for Vim and Neovim
"https://github.com/mhinz/vim-startify
Plug 'mhinz/vim-startify'

"Sayonara
"Provides a single command that deletes the current buffer and handles the current window in a smart way
"https://github.com/mhinz/vim-sayonara
Plug 'mhinz/vim-sayonara', { 'on': 'Sayonara' }

"targets.vim
" Plug 'wellle/targets.vim'

"Autosave
"A NeoVim plugin for saving your work before the world collapses or you type :qa!
"https://github.com/Pocco81/AutoSave.nvim
Plug 'Pocco81/AutoSave.nvim'

"LastPlace
"Move cursor to last edit location when reopening files
Plug 'farmergreg/vim-lastplace'

call plug#end()
