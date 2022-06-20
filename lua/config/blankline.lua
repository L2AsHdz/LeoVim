local status_ok, blankline = pcall(require, 'indent_blankline')
local hl = require('utils.core').hl
if not status_ok then
    return
end

hl('IndentBlanklineIndent0', { fg = '#ffeaa7', nocombine = true })
hl('IndentBlanklineIndent1', { fg = '#c23616', nocombine = true })
hl('IndentBlanklineIndent2', { fg = '#44bd32', nocombine = true })
hl('IndentBlanklineIndent3', { fg = '#9c88ff', nocombine = true })
hl('IndentBlanklineIndent4', { fg = '#3742fa', nocombine = true })
hl('IndentBlanklineIndent5', { fg = '#ff6b81', nocombine = true })
hl('IndentBlanklineIndent6', { fg = '#18dcff', nocombine = true })
hl('IndentBlanklineIndent7', { fg = '#e1b12c', nocombine = true })

vim.g.indent_blankline_buftype_exclude = { 'terminal', 'nofile' }
vim.g.indent_blankline_filetype_exclude = {
    'help',
    'startify',
    'dashboard',
    'packer',
    'neogitstatus',
    'NvimTree',
    'Trouble',
}
-- vim.g.indent_blankline_char = "▎"

vim.g.indent_blankline_show_trailing_blankline_indent = false
vim.g.indent_blankline_show_first_indent_level = true
vim.g.indent_blankline_use_treesitter = true
vim.g.indent_blankline_show_current_context = true
vim.g.indent_blankline_show_current_context_start = true
vim.g.indent_blankline_show_current_context_start_on_current_line = true
vim.g.indent_blankline_context_patterns = {
    'class',
    'return',
    'function',
    'method',
    '^if',
    '^while',
    'jsx_element',
    '^for',
    '^object',
    '^table',
    'block',
    'arguments',
    'if_statement',
    'else_clause',
    'jsx_element',
    'jsx_self_closing_element',
    'try_statement',
    'catch_clause',
    'import_statement',
    'operation_type',
}

vim.g.indent_blankline_context_highlight_list = {
    'IndentBlanklineIndent0',
}

blankline.setup({
    -- space_char_blankline = " ",
    -- show_current_context = true,
    -- show_current_context_start = true,
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
        "IndentBlanklineIndent3",
        "IndentBlanklineIndent4",
        "IndentBlanklineIndent5",
        "IndentBlanklineIndent6",
        "IndentBlanklineIndent7"
    },
})
