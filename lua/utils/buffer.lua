local M = {}
local api = vim.api
local cmd = vim.cmd
local fn = vim.fn

M.autosave = function()
    local buf = api.nvim_get_current_buf()
    local bufname = api.nvim_buf_get_name(buf)

    local exists = fn.findfile(bufname) == bufname
    local modified = api.nvim_buf_get_option(buf, 'modified')
    local is_modifiable = fn.getbufvar(buf, '&modifiable') == 1
    local is_loaded = api.nvim_buf_is_loaded(buf)

    if exists and modified and is_modifiable and is_loaded then
        api.nvim_buf_call(buf, function()
            cmd('silent! write')
        end)
        print('AutoSave: saved at ' .. fn.strftime('%H:%M:%S'))
        vim.defer_fn(function() cmd("echo ''") end, 1500)
    end
end

return M
