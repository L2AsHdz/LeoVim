" Theme Settings
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1
colorscheme dracula

lua require('plugin-config')
lua require('lualine.lualine-config')

"NvimTree
let g:nvim_tree_quit_on_open = 1
let g:nvim_tree_indent_markers = 1
let g:nvim_tree_add_trailing = 1
let g:nvim_tree_respect_buf_cwd = 1

"Ranger config
" Make Ranger replace netrw and be the file explorer
let g:rnvimr_ex_enable = 1

"incsearch
let g:incsearch#auto_nohlsearch = 1

"Blamer
let g:blamer_enabled = 1
let g:blamer_delay = 750

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
    \ '      ___                                    ___     ',
    \ '     /__/\          ___        ___          /__/\    ',
    \ '     \  \:\        /__/\      /  /\        |  |::\   ',
    \ '      \  \:\       \  \:\    /  /:/        |  |:|:\  ',
    \ '  _____\__\:\       \  \:\  /__/::\      __|__|:|\:\ ',
    \ ' /__/::::::::\  ___  \__\:\ \__\/\:\__  /__/::::| \:\',
    \ ' \  \:\~~\~~\/ /__/\ |  |:|    \  \:\/\ \  \:\~~\__\/',
    \ '  \  \:\  ~~~  \  \:\|  |:|     \__\::/  \  \:\      ',
    \ '   \  \:\       \  \:\__|:|     /__/:/    \  \:\     ',
    \ '    \  \:\       \__\::::/      \__\/      \  \:\    ',
    \ '     \__\/           ~~~~                   \__\/    ',
    \ ]
  " \ ' ##::: ##: ########:: #######:: ##:::: ##: ####: ##:::: ##:',
  " \ ' ###:: ##: ##.....:: ##.... ##: ##:::: ##:. ##:: ###:: ###:',
  " \ ' ####: ##: ##::::::: ##:::: ##: ##:::: ##:: ##:: #### ####:',
  " \ ' ## ## ##: ######::: ##:::: ##: ##:::: ##:: ##:: ## ### ##:',
  " \ ' ##. ####: ##...:::: ##:::: ##:. ##:: ##::: ##:: ##. #: ##:',
  " \ ' ##:. ###: ##::::::: ##:::: ##::. ## ##:::: ##:: ##:.:: ##:',
  " \ ' ##::. ##: ########:. #######::::. ###:::: ####: ##:::: ##:',
  " \ ' .::::..::........:::.......::::::...:::::....::..:::::..::',
  " \ ]
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

