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

M.ag= function(name, opts)
    local options = { clear = true }
    options = vim.tbl_deep_extend('force', options, opts or {})
    return vim.api.nvim_create_augroup(name, options)
end

M.ac = function(events, group, callback, opts)
    local options = { group = group, callback = callback }
    options = vim.tbl_deep_extend('force', options, opts or {})
    vim.api.nvim_create_autocmd(events, options)
end

M.hl = function(name, opts)
    vim.api.nvim_set_hl(0, name, opts)
end

return M
