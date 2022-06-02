local M = {}

function M.map(mode, keybind, command, opts)
    local options = { noremap = true, silent = true }
    options = vim.tbl_deep_extend('force', options, opts or {})
    vim.api.nvim_set_keymap(mode, keybind, command, options)
end

function M.bufmap(buf, mode, keybind, command, opts)
    local options = { noremap = true, silent = true }
    options = vim.tbl_deep_extend('force', options, opts or {})
    vim.api.nvim_buf_set_keymap(buf, mode, keybind, command, options)
end

return M
