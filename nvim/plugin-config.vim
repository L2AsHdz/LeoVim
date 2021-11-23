" Theme Settings
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1
colorscheme tokyonight

"EasyMotion
let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:EasyMotion_smartcase = 1 " Turn on case-insensitive feature
let g:EasyMotion_startofline = 0 " keep cursor column when JK motion

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

"Ranger config
" Make Ranger replace netrw and be the file explorer
let g:rnvimr_ex_enable = 1

"incsearch
let g:incsearch#auto_nohlsearch = 1

