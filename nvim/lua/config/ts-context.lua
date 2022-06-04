local ok, ts_context = pcall(require, 'treesitter-context')

if not ok then
    return
end

ts_context.setup({
    enable = true,
    patterns = {
        default = {
            'class',
            'function',
            'method',
            'for',
            'while',
            'if',
            'switch',
            'case',
        },
    },
})
