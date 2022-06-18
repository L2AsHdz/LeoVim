local M = {}

M.map = function(modes, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    options = vim.tbl_deep_extend('force', options, opts or {})
    vim.keymap.set(modes, lhs, rhs, options)
end

M.bufmap = function(buf, mode, keybind, command, opts)
    local options = { noremap = true, silent = true }
    options = vim.tbl_deep_extend('force', options, opts or {})
    vim.api.nvim_buf_set_keymap(buf, mode, keybind, command, options)
end

M.focus_maximise = function()
	-- we add +1 just incase winminwidth or height is full width/height
    require('bufresize').register()
	vim.o.winwidth = vim.o.columns + 1
	vim.o.winheight = vim.o.lines + 1
end

M.focus_equalise = function()
	vim.o.winminwidth = 0
	vim.o.winwidth = 20
	vim.o.winminheight = 1
	vim.o.winheight = 1
	vim.cmd('wincmd=')
    require('bufresize').resize()
end

M.focus_max_or_equal = function()
	local winwidth = vim.fn.winwidth(vim.api.nvim_get_current_win())
	if winwidth > (vim.o.columns - 10) then
        vim.notify('Window layout restored', vim.log.levels.INFO)
		M.focus_equalise()
	else
        vim.notify('Maximized window', vim.log.levels.INFO)
		M.focus_maximise()
	end
end

return M
