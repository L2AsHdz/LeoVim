local ok, feline = pcall(require, 'feline')

if not ok then
    return
end

local colors = {
    added = '#9ccfd8',
    changed = '#ea9a97',
    removed = '#eb6f92',
    black = '#090D1B',
    white = '#FBFBFE',
    red = '#eb3b5a',
    blue = '#4b7bec',
    cyan = '#00d2d3',
    yellow = '#e1b12c',
    grey = '#57606f',
    grey_dark = '#303030',
    orange = '#fe8019',
    green = '#44bd32',
    error = '#ea6f92',
    warn = '#f6c177',
    bg = '#1e1e2e',
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
    'NvimTree'
}

local function get_icon_mode(mode)
    if mode == 'n' then
        return '  '
    elseif mode == 'i' then
        return ' פֿ '
    elseif mode == 'v' or mode == 'V' or mode == 's' or mode == 'S' then
        return ' 濾'
    elseif mode == 'R' then
        return '   '
    elseif mode == 'c' then
        return '  '
    elseif mode == 't' then
        return '  '
    else
        print(mode)
        return '  ' .. mode .. ' - '
    end
end

local function get_hl_mode(mode)
    local hl = {
        fg = colors.black,
        bg = colors.white,
    }
    if mode == 'n' then
        hl.bg = colors.red
    elseif mode == 'i' then
        hl.bg = colors.blue
    elseif mode == 'v' or mode == 'V' or mode == 's' or mode == 'S' then
        hl.bg = colors.cyan
    elseif mode == 'R' then
        hl.bg = colors.orange
    elseif mode == 'c' then
        hl.bg = colors.green
    elseif mode == 't' then
        hl.bg = colors.yellow
    end
    return hl
end

local function get_hl_secondary(fg)
    return {
        fg = fg or colors.white,
        bg = colors.grey,
    }
end

local function get_mode_separator(left_sep, right_sep)
    return {
        provider = ' ',
        left_sep = left_sep,
        right_sep = right_sep,
        hl = function()
            return get_hl_mode(vim.fn.mode())
        end,
    }
end

local function get_normal_separator(left_sep, right_sep)
    return {
        provider = ' ',
        left_sep = left_sep,
        right_sep = right_sep,
        hl = get_hl_secondary(),
    }
end

local components = {
    active = {
        {
            {
                provider = {
                    name = 'vi_mode',
                    opts = {
                        show_mode_name = true,
                        padding = true,
                    },
                },
                icon = function()
                    return get_icon_mode(vim.fn.mode())
                end,
                left_sep = 'left_rounded',
                hl = function()
                    return get_hl_mode(vim.fn.mode())
                end,
            },
            get_mode_separator('', 'right_rounded'),
            get_normal_separator('left_rounded', 'block'),
            {
                provider = {
                    name = 'file_info',
                    opts = {
                        type = 'relative',
                    },
                },
                hl = get_hl_secondary(),
            },
            get_normal_separator('block', ''),
            {
                provider = 'file_size',
                hl = get_hl_secondary(),
            },
            get_normal_separator('block', 'right_rounded'),
        },
        {
            {
                provider = 'lsp_client_names',
                short_provider = '',
                icon = '  ',
                hl = { fg = colors.yellow },
            },
        },
        {
            get_normal_separator('left_rounded', 'block'),
            {
                provider = 'diagnostic_errors',
                icon = ' ',
                right_sep = 'block',
                hl = get_hl_secondary(colors.error),
            },
            {
                provider = 'diagnostic_warnings',
                icon = ' ',
                right_sep = 'block',
                hl = get_hl_secondary(colors.warn),
            },
            {
                provider = 'git_branch',
                icon = {
                    str = ' ',
                    hl = { fg = colors.red },
                },
                right_sep = 'block',
                hl = get_hl_secondary(),
            },
            {
                provider = 'git_diff_added',
                icon = ' ',
                right_sep = 'block',
                hl = get_hl_secondary(colors.added),
            },
            {
                provider = 'git_diff_changed',
                icon = ' ',
                right_sep = 'block',
                hl = get_hl_secondary(colors.changed),
            },
            {
                provider = 'git_diff_removed',
                icon = ' ',
                right_sep = 'block',
                hl = get_hl_secondary(colors.removed),
            },
            get_normal_separator('', 'right_rounded'),
            get_mode_separator('left_rounded', 'block'),
            {
                provider = 'position',
                right_sep = 'block',
                hl = function()
                    return get_hl_mode(vim.fn.mode())
                end,
            },
            {
                provider = 'line_percentage',
                left_sep = 'block',
                hl = function()
                    return get_hl_mode(vim.fn.mode())
                end,
            },
            {
                provider = '/%L  ',
                right_sep = 'right_rounded',
                hl = function()
                    return get_hl_mode(vim.fn.mode())
                end,
            },
        },
    },
    inactive = { { {} } },
}

feline.setup({
    components = components,
    force_inactive = { filetypes = disabled_filetypes },
})

feline.use_theme(colors)
