local ok, gitsigns = pcall(require, 'gitsigns')
local hl = require('utils.core').hl

if not ok then
    return
end

gitsigns.setup({
    signs = {
        add          = {hl = 'GitSignsAdd'   , text = '┃', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
        change       = {hl = 'GitSignsChange', text = '┃', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
        delete       = {hl = 'GitSignsDelete', text = '┃', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
        topdelete    = {hl = 'GitSignsDelete', text = '┃', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
        changedelete = {hl = 'GitSignsChange', text = '┃', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
    },
})
hl('GitSignsAddLn', { bg = '#9ccfd8', fg = '#2a273f' })
hl('GitSignsDeleteLn', { bg = '#eb6f92', fg = '#2a273f' })
hl('GitSignsChangeLn', { bg = '#ea9a97', fg = '#2a273f' })
 -- 
