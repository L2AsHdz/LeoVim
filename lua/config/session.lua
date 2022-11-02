local ok, session = pcall(require, 'session_manager')

if not ok then
    return
end

local Path = require('plenary.path')

session.setup({
    sessions_dir = Path:new(vim.fn.stdpath('data'), 'sessions'),
    path_replacer = '__',
    colon_replacer = '++',
    autoload_mode = require('session_manager.config').AutoloadMode.Disabled,
    autosave_last_session = true,
    autosave_ignore_not_normal = true,
    autosave_ignore_filetypes = { 'gitcommit'},
    autosave_only_in_session = true
})
