local ok, impatient = pcall(require, 'impatient')
if not ok then
    vim.notify('there was a problem loading impatient', vim.log.levels.WARN)
end
require('settings')
require('plugins')
require('maps')
require('autocommands')
