local ok_l, lualine = pcall(require, 'lualine')
if not ok_l then
    return
end

local ok_navic, navic = pcall(require, 'nvim-navic')
if not ok_navic then
    return
end

local colors = {
  black         = '#090D1B',
  white         = '#FBFBFE',
  red           = '#eb3b5a',
  blue          = '#4b7bec',
  cyan          = '#00d2d3',
  grey          = '#576574',
  orange        = '#fe8019',
  green         = '#44bd32',
  error         = '#c23616',
  background    = '#232136'
}

local bubbles_theme = {
    normal = {
        a = { fg = colors.black, bg = colors.red },
        b = { fg = colors.white, bg = colors.grey },
        c = { fg = colors.white, bg = colors.background },
    },

    insert = { a = { fg = colors.black, bg = colors.blue } },
    visual = { a = { fg = colors.black, bg = colors.cyan } },
    replace = { a = { fg = colors.black, bg = colors.orange } },
    command = { a = { fg = colors.black, bg = colors.green } },
    terminal = {a = { fg = colors.black, bg = colors.white }},

    inactive = {
        a = { fg = colors.white, bg = colors.grey },
        b = { fg = colors.white, bg = colors.background },
        c = { fg = colors.black, bg = colors.background },
        z = { fg = colors.white, bg = colors.grey },
    },
}

local filetype = {
    'filetype',
    icon_only = true,
}

local filename = {
    'filename',
    path = 1,
    symbols = {
        modified = '',
        readonly = '',
        unnamed = '',
    },
}

local diagnostics = {
    'diagnostics',
    sources = { 'nvim_lsp' },
    sections = { 'error', 'warn', 'info' },
    symbols = { error = ' ', warn = ' ', info = ' ' },
    -- diagnostics_color = { error = { fg = colors.white, bg = colors.error } },
    update_in_insert = true,
}

local sidebar_extension = {
    options = {
        theme = bubbles_theme,
        component_separators = '',
        section_separators = { left = '', right = '' },
    },
    sections = {
        lualine_a = { { 'filetype', colored = true } },
    },
    filetypes = { 'SidebarNvim' },
}

lualine.setup({
    options = {
        theme = bubbles_theme,
        component_separators = '',
        section_separators = { left = '', right = '' },
        disabled_filetypes = { 'alpha', 'dashboard', 'Outline' },
    },
    sections = {
        lualine_a = {
            {
                'mode',
                separator = { left = '' },
                right_padding = 2,
                fmt = function(str)
                    if str == 'NORMAL' then
                        return ' ' .. str
                    elseif str == 'INSERT' then
                        return 'פֿ ' .. str
                    elseif str == 'VISUAL' or str == 'V-LINE' then
                        return ' ' .. str
                    elseif str == 'REPLACE' then
                        return '﯒ ' .. str
                    elseif str == 'COMMAND' then
                        return ' ' .. str
                    elseif str == 'SELECT' then
                        return '濾' .. str
                    elseif str == 'TERMINAL' then
                        return ' ' .. str
                    else
                        return ' ' .. str
                    end
                end,
            },
        },
        lualine_b = { filetype, filename },
        lualine_c = {
            { navic.get_location, cond = navic.is_available },
        },
        lualine_x = {},
        lualine_y = { diagnostics, 'diff', 'branch' },
        lualine_z = {
            { 'location', separator = {} },
            { '%p%%/%L', separator = { right = '' } },
        },
    },
    inactive_sections = {
        lualine_a = { filetype, filename },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { 'location' },
    },
    tabline = {},
    extensions = { 'nvim-tree', sidebar_extension },
})
