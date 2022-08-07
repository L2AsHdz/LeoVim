local ok_l, lualine = pcall(require, 'lualine')
if not ok_l then
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
  background    = '#191724'
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
    terminal = { a = { fg = colors.black, bg = colors.white } },

    inactive = {
        a = { fg = colors.white, bg = colors.grey },
        b = { fg = colors.white, bg = colors.background },
        c = { fg = colors.black, bg = colors.background },
        z = { fg = colors.white, bg = colors.grey },
    },
}

local filetype = {
    'filetype',
    separator = { left = '' },
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

local disabled_filetypes = {
    'packer',
    'NeogitStatus',
    'NeogitPopup',
    'Trouble',
    'alpha',
    'lir',
    'Outline',
    'spectre_panel',
    'TelescopePrompt',
}

lualine.setup({
    options = {
        theme = bubbles_theme,
        component_separators = '',
        section_separators = { left = '', right = '' },
        disabled_filetypes = {
            statusline = disabled_filetypes,
        },
    },
    sections = {
        lualine_a = {
            {
                'mode',
                separator = { left = '' },
                fmt = function(str)
                    if str == 'NORMAL' then
                        return ' ' .. str
                    elseif str == 'INSERT' then
                        return 'פֿ ' .. str
                    elseif str == 'VISUAL' or str == 'V-LINE' or str == 'V-BLOCK' then
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
        lualine_c = {},
        lualine_x = {},
        lualine_y = {
            diagnostics,
            { 'branch', icon = { 'שׂ', color = { fg = colors.red } } },
            {
                'diff',
                separator = { right = '' },
                symbols = { added = ' ', modified = ' ', removed = ' ' },
            },
        },
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
    extensions = { 'nvim-tree' },
})
