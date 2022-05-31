require('gitsigns').setup({
    signs = {
        add          = {hl = 'GitSignsAdd'   , text = '┃', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
        change       = {hl = 'GitSignsChange', text = '┃', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
        delete       = {hl = 'GitSignsDelete', text = '┃', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
        topdelete    = {hl = 'GitSignsDelete', text = '┃', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
        changedelete = {hl = 'GitSignsChange', text = '┃', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
    },
    keymaps = {}
})
 -- 
vim.cmd([[
    hi GitSignsAddLn guibg=#9ccfd8  guifg=#2a273f
    hi GitSignsDeleteLn guibg=#eb6f92 guifg=#2a273f
    hi GitSignsChangeLn guibg=#ea9a97 guifg=#2a273f
]])
