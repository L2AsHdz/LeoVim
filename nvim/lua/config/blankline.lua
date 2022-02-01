local status_ok, blankline = pcall(require, 'indent_blankline')
if not status_ok then
    return
end

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
vim.wo.colorcolumn = '99999'

vim.cmd([[highlight IndentBlanklineIndent1 guifg=#c23616 gui=nocombine]])
vim.cmd([[highlight IndentBlanklineIndent2 guifg=#44bd32 gui=nocombine]])
vim.cmd([[highlight IndentBlanklineIndent3 guifg=#e1b12c gui=nocombine]])
vim.cmd([[highlight IndentBlanklineIndent4 guifg=#9c88ff gui=nocombine]])
vim.cmd([[highlight IndentBlanklineIndent5 guifg=#00a8ff gui=nocombine]])
vim.cmd([[highlight IndentBlanklineIndent6 guifg=#ff6b81 gui=nocombine]])
vim.cmd([[highlight IndentBlanklineIndent7 guifg=#ffa502 gui=nocombine]])

vim.g.indent_blankline_context_highlight_list = {
    'IndentBlanklineIndent1',
    'IndentBlanklineIndent2',
    'IndentBlanklineIndent3',
    'IndentBlanklineIndent4',
    'IndentBlanklineIndent5',
    'IndentBlanklineIndent6',
    'IndentBlanklineIndent7'
}

blankline.setup({
    -- space_char_blankline = " ",
    -- show_current_context = true,
    -- show_current_context_start = true,
    -- char_highlight_list = {
    --     "IndentBlanklineIndent1",
    --     "IndentBlanklineIndent2",
    --     "IndentBlanklineIndent3",
    --     "IndentBlanklineIndent4",
    --     "IndentBlanklineIndent5",
    --     "IndentBlanklineIndent6",
    --     "IndentBlanklineIndent7"
    -- },
})
