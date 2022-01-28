vim.g.startify_files_number = 5
vim.g.startify_session_persistence = 1

vim.cmd [[
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
]]
