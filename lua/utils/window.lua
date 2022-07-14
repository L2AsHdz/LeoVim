local cmd = vim.api.nvim_command
local M = {}

M.maximise = function()
    -- we add +1 just incase winminwidth or height is full width/height
    require('bufresize').register()
    vim.o.winwidth = vim.o.columns + 1
    vim.o.winheight = vim.o.lines + 1
end

M.equalise = function()
    vim.o.winminwidth = 0
    vim.o.winwidth = 20
    vim.o.winminheight = 1
    vim.o.winheight = 1
    vim.cmd('wincmd=')
    require('bufresize').resize()
end

M.max_or_equal = function()
    local winwidth = vim.fn.winwidth(vim.api.nvim_get_current_win())
    if winwidth > (vim.o.columns - 10) then
        vim.notify('Window layout restored', vim.log.levels.INFO)
        M.equalise()
    else
        vim.notify('Maximized window', vim.log.levels.INFO)
        M.maximise()
    end
end

M.split_command = function(direction)
    local winnr = vim.api.nvim_get_current_win()

    cmd('wincmd ' .. direction)
    if winnr == vim.api.nvim_get_current_win() then
        if direction == 'h' or direction == 'l' then
            cmd('wincmd v')
            cmd('wincmd ' .. direction)
        elseif direction == 'j' or direction == 'k' then
            cmd('wincmd s')
            cmd('wincmd ' .. direction)
        end
    end
    vim.api.nvim_command('normal! zz')
end

return M
