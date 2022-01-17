" Theme Settings
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1
colorscheme dracula

lua require('plugin-config')
lua require('lualine.lualine-config')

"EasyMotion
" let g:EasyMotion_do_mapping = 0 " Disable default mappings
" let g:EasyMotion_smartcase = 1 " Turn on case-insensitive feature
" let g:EasyMotion_startofline = 0 " keep cursor column when JK motion

" Airline Settings
" let g:airline_powerline_fonts = 1
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = ' '
" let g:airline#extensions#tabline#formatter = 'unique_tail'
" let g:airline_theme='base16_black_metal'

"NERDTree Settings
" let NERDTreeQuitOnOpen=1 " Cerrar al abrir un archivo
" let NERDTreeShowHidden=1 " Mostrar archivos ocultos
" let NERDTreeAutoDeleteBuffer = 1
" let NERDTreeMinimalUI=1
" let NERDTreeDirArrows=1
" let NERDTreeShowLineNumbers=1
" let NERDTreeMapOpenInTab='\t'
" let g:NERDTreeGitStatusUseNerdFonts = 1 " Use nerdfonts for nerd-tree-git-plugin

"NvimTree
let g:nvim_tree_quit_on_open = 1
let g:nvim_tree_indent_markers = 1
let g:nvim_tree_add_trailing = 1
let g:nvim_tree_respect_buf_cwd = 1

"Ranger config
" Make Ranger replace netrw and be the file explorer
let g:rnvimr_ex_enable = 1

" UltiSnips
let g:UltiSnipsExpandTrigger="<C-CR>"
let g:UltiSnipsListSnippets="<C-_>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"

" Coc Settings
so ~/.config/nvim/coc.vim

"ALE
let g:ale_disable_lsp=1
let g:ale_sign_error = '●'
let g:ale_sign_warning = '*'
" let g:airline#extensions#ale#enabled = 1
let g:ale_lint_on_enter = 0
let g:ale_sign_priority = 15
" let g:ale_sign_column_always = 1

"incsearch
let g:incsearch#auto_nohlsearch = 1

" GitGutter
let g:gitgutter_set_sign_backgrounds = 1
let g:gitgutter_sign_added = ''
let g:gitgutter_sign_modified = ''
let g:gitgutter_sign_removed = ''
let g:gitgutter_sign_removed_first_line = ''
let g:gitgutter_sign_modified_removed = ''
let g:gitgutter_terminal_reports_focus=0
let g:gitgutter_sign_priority = 12
highlight SignColumn guibg=bg

"Blamer
let g:blamer_enabled = 1
let g:blamer_delay = 500

"git-messenger
let g:git_messenger_floating_win_opts = { 'border': 'single' }
let g:git_messenger_popup_content_margins = v:false

"Emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key='<space>'

"Startify
let g:startify_files_number = 5 " 'Most Recent Files' number
let g:startify_session_persistence = 1 " Update session automatically as you exit vim

" Simplify the startify list to just recent files and sessions
let g:startify_lists = [
  \ { 'type': 'dir',       'header': ['   Recent files'] },
  \ { 'type': 'sessions',  'header': ['   Saved sessions'] },
  \ ]

" Fancy custom header
let g:startify_custom_header = [
  \ ' ##::: ##: ########:: #######:: ##:::: ##: ####: ##:::: ##:',
  \ ' ###:: ##: ##.....:: ##.... ##: ##:::: ##:. ##:: ###:: ###:',
  \ ' ####: ##: ##::::::: ##:::: ##: ##:::: ##:: ##:: #### ####:',
  \ ' ## ## ##: ######::: ##:::: ##: ##:::: ##:: ##:: ## ### ##:',
  \ ' ##. ####: ##...:::: ##:::: ##:. ##:: ##::: ##:: ##. #: ##:',
  \ ' ##:. ###: ##::::::: ##:::: ##::. ## ##:::: ##:: ##:.:: ##:',
  \ ' ##::. ##: ########:. #######::::. ###:::: ####: ##:::: ##:',
  \ ' .::::..::........:::.......::::::...:::::....::..:::::..::',
  \ ]
  " \ '     ___           ___           ___           ___                       ___     ',
  " \ '    /\__\         /\  \         /\  \         /\__\          ___        /\__\    ',
  " \ '   /::|  |       /::\  \       /::\  \       /:/  /         /\  \      /::|  |   ',
  " \ '  /:|:|  |      /:/\:\  \     /:/\:\  \     /:/  /          \:\  \    /:|:|  |   ',
  " \ ' /:/|:|  |__   /::\~\:\  \   /:/  \:\  \   /:/__/  ___      /::\__\  /:/|:|__|__ ',
  " \ '/:/ |:| /\__\ /:/\:\ \:\__\ /:/__/ \:\__\  |:|  | /\__\  __/:/\/__/ /:/ |::::\__\',
  " \ '\/__|:|/:/  / \:\~\:\ \/__/ \:\  \ /:/  /  |:|  |/:/  / /\/:/  /    \/__/~~/:/  /',
  " \ '    |:/:/  /   \:\ \:\__\    \:\  /:/  /   |:|__/:/  /  \::/__/           /:/  / ',
  " \ '    |::/  /     \:\ \/__/     \:\/:/  /     \::::/__/    \:\__\          /:/  /  ',
  " \ '    /:/  /       \:\__\        \::/  /       ~~~~         \/__/         /:/  /   ',
  " \ '    \/__/         \/__/         \/__/                                   \/__/    ',
  " \'  ',
  " \'  ',  

