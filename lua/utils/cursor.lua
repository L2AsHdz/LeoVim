local M = {}

M.StayCentered = function(inInsert)
    local getCursor = vim.api.nvim_win_get_cursor
    local line = getCursor(0)[1]
    if line ~= (vim.b.last_line or 0) then
        vim.cmd('normal! zz')
        vim.b.last_line = line
        if inInsert then
            local column = vim.fn.getcurpos()[5]
            vim.fn.cursor(line, column)
        end
        -- HideCursorLine()
    end
end

M.HideCursorLine = function()
    local timer = vim.loop.new_timer()
    vim.wo.cursorline = false
    timer:start(200, 0, vim.schedule_wrap(
        function()
            vim.wo.cursorline = true
        end
    ))
end

return M
