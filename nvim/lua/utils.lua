local M = {}

function M.map(modes, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    options = vim.tbl_deep_extend('force', options, opts or {})
    vim.keymap.set(modes, lhs, rhs, options)
end

function M.bufmap(buf, mode, keybind, command, opts)
    local options = { noremap = true, silent = true }
    options = vim.tbl_deep_extend('force', options, opts or {})
    vim.api.nvim_buf_set_keymap(buf, mode, keybind, command, options)
end

return M
