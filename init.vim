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
set clipboard=unnamedplus " Habilita el portapapeles en el sistema
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

set encoding=utf-8 " Habilita utf-8
set laststatus=2

" Display options
set showmode
set showcmd


set termguicolors "Activa true colors en la terminal

call plug#begin('~/.local.share')

" Themes
Plug 'ghifarit53/tokyonight-vim' " Theme for neovim

Plug 'vim-airline/vim-airline' " StatusBar for neovim
Plug 'vim-airline/vim-airline-themes' " Themes for airline

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'preservim/nerdtree' " File system explorer for vim
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Snippets and adittional text editing support

call plug#end()

" Theme Settings
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1

colorscheme tokyonight

"NERDTree Settings
let NERDTreeQuitOnOpen=1

" Airline Settings
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#formatter = 'unique_tail'

let g:airline_theme='base16_black_metal'


" Coc Settings
let g:coc_global_extensions = ['coc-git', 'coc-html', 'coc-tsserver']

" Maps
let mapleader=" "

nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
