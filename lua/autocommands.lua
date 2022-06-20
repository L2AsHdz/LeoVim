local ac = require('utils.core').ac
local ag = require('utils.core').ag
local getCursor = vim.api.nvim_win_get_cursor

function StayCentered(inInsert)
    local line = getCursor(0)[1]
    if line ~= (vim.b.last_line or 0) then
        vim.cmd('normal! zz')
        vim.b.last_line = line
        if inInsert then
            local column = vim.fn.getcurpos()[5]
            vim.fn.cursor(line, column)
        end
    end
end

local stay_group = ag('StayCentered')
ac('CursorMovedI', stay_group, function() StayCentered(true) end)
ac('CursorMoved', stay_group, function() StayCentered(false) end)

local resize_group = ag('Resize')
ac('VimResized', resize_group, function() require('bufresize').resize() end)
