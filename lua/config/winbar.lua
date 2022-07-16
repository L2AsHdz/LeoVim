local M = {}

M.winbar_filetype_exclude = {
    'help',
    'startify',
    'dashboard',
    'packer',
    'neogitstatus',
    'NvimTree',
    'Trouble',
    'alpha',
    'lir',
    'Outline',
    'spectre_panel',
    'toggleterm',
}

local function isEmpty(s)
    return s == nil or s == ''
end

local get_filename = function()
    local filename = vim.fn.expand('%:t')
    local extension = vim.fn.expand('%:e')

    if not isEmpty(filename) then
        local file_icon, file_icon_color = require('nvim-web-devicons').get_icon_color(
            filename,
            extension,
            { default = true }
        )

        local hl_group = 'FileIconColor' .. extension

        require('utils.core').hl(hl_group, { fg = file_icon_color })

        if isEmpty(file_icon) then
            file_icon = ''
            file_icon_color = ''
        end

        return ' ' .. '%#' .. hl_group .. '#' .. file_icon .. '%*' .. ' ' .. '%#CursorLineNr#' .. filename .. '%*'
    end
    return ''
end

local excludes = function()
    if vim.tbl_contains(M.winbar_filetype_exclude, vim.bo.filetype) then
        vim.opt_local.winbar = nil
        return true
    end
    return false
end

M.get_winbar = function()
    if excludes() then
        return ''
    end

    local value = get_filename()

    local ok, navic = pcall(require, 'nvim-navic')

    if ok then
        if navic.is_available() and not isEmpty(navic.get_location()) then
            value = value .. ' > ' .. navic.get_location()
        end
    end

    return value
end

return M
