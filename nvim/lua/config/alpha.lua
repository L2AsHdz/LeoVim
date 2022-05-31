local status_ok, alpha = pcall(require, 'alpha')
if not status_ok then
    return
end

local dashboard = require('alpha.themes.dashboard')
dashboard.section.header.val = {
    [[                               __                ]],
    [[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
    [[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
    [[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
    [[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
    [[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
}
dashboard.section.buttons.val = {
    dashboard.button('f', '  Find file', ':Telescope find_files <CR>'),
    dashboard.button('e', '  New file', ':ene <BAR> startinsert <CR>'),
    dashboard.button('s', '  Sessions', ':SessionManager load_session<CR>'),
    dashboard.button('l', 'ﮦ  Restore last session', ':SessionManager load_last_session<CR>'),
    dashboard.button('r', '  Recently used files', ':Telescope oldfiles <CR>'),
    dashboard.button('t', '  Find text', ':Telescope live_grep <CR>'),
    -- dashboard.button('c', '  Configuration', ':e ~/.config/nvim/init.lua <CR>'),
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
