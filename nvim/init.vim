"UI config
syntax on " Habilita syntax highlight
set number " Muestra los numeros de las lineas
set rnu " Numeros de linea relativos
set numberwidth=1 " Numeros de columna mas ajustados
set cursorline "Resalta la linea actual
set title " Muestra el nombre del archivo en la ventana de la terminal
set mouse=a " Habilita la integracion con el mouse
set colorcolumn=120 " Muestra la columna limite a 120 caracteres
set nowrap  " No dividir la línea si es muy larga
set wildmenu " Autocompletado para la barra de comandos
set autoindent " Habilita el autoidentado
set smartindent " habilita el identado inteligente
set cindent " Identacion de llaves
set showmatch " Señala [{()}]
set autoread " Recarga el archivo si es modificado por una fuente externa
set clipboard+=unnamedplus " Habilita el portapapeles en el sistema
set cmdheight=1
set noswapfile

"Tabulaciones
set tabstop=4
set shiftwidth=4
set softtabstop=4
set shiftround
set expandtab  " Insertar espacios en lugar de <Tab>s
set smarttab

"Busquedas
set ignorecase  " Ignorar mayúsculas al hacer una búsqueda
set smartcase  " No ignorar mayúsculas si la palabra a buscar contiene mayúsculas
set incsearch " Busqueda incremental
set hlsearch " Highlights search results


set spelllang=en,es  " Corregir palabras usando diccionarios en inglés y español

" Folding (ocultado de bloques anidados)
set foldenable    " Activa folding
set foldlevelstart=10 " Dobla a partir de 10.
set foldnestmax=10  " Máximo de 10
set foldmethod=indent " Basado en identado

" set encoding=utf-8 " Habilita utf-8
set laststatus=2

" Display options
set showmode
set showcmd


set termguicolors "Activa true colors en la terminal

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

" Theme Settings
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1

colorscheme tokyonight

"NERDTree Settings
let NERDTreeQuitOnOpen=1 " Cerrar al abrir un archivo
let NERDTreeShowHidden=1 " Mostrar archivos ocultos
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeShowLineNumbers=1
let NERDTreeMapOpenInTab='\t'
let g:NERDTreeGitStatusUseNerdFonts = 1 " Use nerdfonts for nerd-tree-git-plugin

" Airline Settings
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#formatter = 'unique_tail'

let g:airline_theme='base16_black_metal'

" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<C-_>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"

" Coc Settings
so ~/.config/nvim/coc.vim

" Maps
let mapleader=" "

" Atajos perozonalizados
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>W :wq<CR>
nmap <Leader>Q :q!<CR>
nmap <Leader>bb :bd<CR>

"Busqueda con easymotion
nmap <Leader>s <Plug>(easymotion-s2)

"Abrir NERDTreeFind
nmap <Leader>nt :NERDTreeFind<CR>
