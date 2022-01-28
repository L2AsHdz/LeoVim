local M = {}

function M.map(mode, keybind, command, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend('force', options, opts)
    end
    vim.api.nvim_set_keymap(mode, keybind, command, options)
end

return M
