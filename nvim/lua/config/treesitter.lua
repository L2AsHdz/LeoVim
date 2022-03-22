local ok, configs = pcall(require, 'nvim-treesitter.configs')
if not ok then
    return
end

configs.setup {
    ensure_installed = {
        'bash', 'c', 'comment', 'cpp', 'css', 'dockerfile', 'dot',
        'graphql', 'html', 'java', 'http', 'javascript', 'json', 'json5',
        'lua', 'php', 'python', 'tsx', 'typescript', 'vim', 'yaml'
    },
    sync_install = false,
    ignore_install = { "" }, -- List of parsers to ignore installing
    indent = { enable = false },
    autopairs = { enable = true },
    autotag = { enable = true },
    highlight = {
        enable = true, -- false will disable the whole extension
        disable = { "" }, -- list of language that will be disabled
        additional_vim_regex_highlighting = true,

    },
    rainbow = {
        enable = true,
        -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
        extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
        max_file_lines = 1000, -- Do not enable for files with more than n lines, int
        -- colors = {}, -- table of hex strings
        -- termcolors = {} -- table of colour name strings
    },
    matchup = {
        enable = true
    }
}
