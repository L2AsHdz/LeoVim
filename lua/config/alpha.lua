local status_ok, alpha = pcall(require, 'alpha')
if not status_ok then
    return
end

local dashboard = require('alpha.themes.dashboard')
-- dashboard.section.header.val = {
--     [[                               __                ]],
--     [[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
--     [[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
--     [[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
--     [[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
--     [[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
-- }
dashboard.section.header.val = {
[[       ,gggg,                     ,ggg,         ,gg]],
[[      d8" "8I                    dP""Y8a       ,8P]],
[[      88  ,dP                    Yb, `88       d8']],
[[   8888888P"                      `"  88       88    gg]],
[[      88                              88       88    ""]],
[[      88         ,ggg,     ,ggggg,    I8       8I    gg    ,ggg,,ggg,,ggg,]],
[[ ,aa,_88        i8" "8i   dP"  "Y8ggg `8,     ,8'    88   ,8" "8P" "8P" "8,]],
[[dP" "88P        I8, ,8I  i8'    ,8I    Y8,   ,8P     88   I8   8I   8I   8I]],
[[Yb,_,d88b,,_    `YbadP' ,d8,   ,d8'     Yb,_,dP    _,88,_,dP   8I   8I   Yb,]],
[[ "Y8P"  "Y88888888P"Y888P"Y8888P"        "Y8P"     8P""Y88P'   8I   8I   `Y8]]
}

dashboard.section.buttons.val = {
    dashboard.button('f', '  Find file', ':Telescope find_files <CR>'),
    dashboard.button('n', '  New file', ':ene <BAR> startinsert <CR>'),
    dashboard.button('s', '  Sessions', ':SessionManager load_session<CR>'),
    dashboard.button('l', 'ﮦ  Restore last session', ':SessionManager load_last_session<CR>'),
    dashboard.button('r', '  Recently used files', ':Telescope oldfiles <CR>'),
    dashboard.button('t', '  Find text', ':Telescope live_grep <CR>'),
    -- dashboard.button('c', '  Configuration', ':e ~/.config/nvim/init.lua <CR>'),
    dashboard.button('u', '  Update plugins', ':PackerSync<CR>'),
    dashboard.button('q', '  Quit Neovim', ':qa<CR>'),
}

local function footer()
    local plugins = #vim.tbl_keys(packer_plugins)
    local v = vim.version()
    local datetime = os.date(' %d-%m-%Y   %H:%M:%S')
    local platform = vim.fn.has('win32') == 1 and ' Windows' or ' Linux'
    return string.format('%s   %d plugins   v%d.%d.%d  %s', platform, plugins, v.major, v.minor, v.patch, datetime)
end

dashboard.section.footer.val = footer()

-- dashboard.section.header.opts.hl = 'Include'
-- dashboard.section.buttons.opts.hl = 'Keyword'

-- dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)

-- \ '      ___                                    ___     ',
-- \ '     /__/\          ___        ___          /__/\    ',
-- \ '     \  \:\        /__/\      /  /\        |  |::\   ',
-- \ '      \  \:\       \  \:\    /  /:/        |  |:|:\  ',
-- \ '  _____\__\:\       \  \:\  /__/::\      __|__|:|\:\ ',
-- \ ' /__/::::::::\  ___  \__\:\ \__\/\:\__  /__/::::| \:\',
-- \ ' \  \:\~~\~~\/ /__/\ |  |:|    \  \:\/\ \  \:\~~\__\/',
-- \ '  \  \:\  ~~~  \  \:\|  |:|     \__\::/  \  \:\      ',
-- \ '   \  \:\       \  \:\__|:|     /__/:/    \  \:\     ',
-- \ '    \  \:\       \__\::::/      \__\/      \  \:\    ',
-- \ '     \__\/           ~~~~                   \__\/    ',
-- \ ]
