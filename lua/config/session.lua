local ok, session = pcall(require, 'session_manager')

if not ok then
    return
end

local Path = require('plenary.path')

session.setup({
    sessions_dir = Path:new(vim.fn.stdpath('data'), 'sessions'),
    path_replacer = '__',
    colon_replacer = '++',
    autoload_mode = require('session_manager.config').AutoloadMode.Disabled, -- Define what to do when Neovim is started without arguments. Possible values: Disabled, CurrentDir, LastSession
    autosave_last_session = true, -- Automatically save last session on exit and on session switch.
    autosave_ignore_not_normal = true, -- Plugin will not save a session when no buffers are opened, or all of them aren't writable or listed.
    autosave_ignore_filetypes = { 'gitcommit'},
    autosave_only_in_session = true -- Always autosaves session. If true, only autosaves after a session is active.
})
