local ok, configs = pcall(require, 'nvim-treesitter.configs')
if not ok then
    return
end

local servers = {
    'bash',
    'c',
    'comment',
    'cpp',
    'css',
    'dart',
    'dockerfile',
    'dot',
    'graphql',
    'html',
    'http',
    'java',
    'javascript',
    'json',
    'json5',
    'lua',
    'markdown',
    'php',
    'python',
    'sql',
    'tsx',
    'typescript',
    'vim',
    'yaml',
}

configs.setup({
    ensure_installed = servers,
    sync_install = false,
    ignore_install = { '' },
    indent = { enable = true },
    autopairs = { enable = true },
    autotag = { enable = true },
    yati = { enable = false },
    highlight = {
        enable = true, -- false will disable the whole extension
        disable = { '' }, -- list of language that will be disabled
        additional_vim_regex_highlighting = false,
    },
    rainbow = {
        enable = true,
        -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
        extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
        max_file_lines = 1000, -- Do not enable for files with more than n lines, int
        -- colors = {}, -- table of hex strings
        -- termcolors = {} -- table of colour name strings
    },
    textobjects = {
        select = {
            enable = true,

            -- Automatically jump forward to textobj, similar to targets.vim
            lookahead = true,

            keymaps = {
                -- You can use the capture groups defined in textobjects.scm
                ['af'] = '@function.outer',
                ['if'] = '@function.inner',
                ['ac'] = '@class.outer',
                ['ic'] = '@class.inner',
            },
        },
        swap = {
            enable = true,
            swap_next = {
                ['<leader>sn'] = '@parameter.inner',
            },
            swap_previous = {
                ['<leader>sp'] = '@parameter.inner',
            },
        },
        move = {
            enable = true,
            set_jumps = true, -- whether to set jumps in the jumplist
            goto_next_start = {
                [']f'] = '@function.outer',
                [']c'] = '@class.outer',
            },
            goto_next_end = {
                [']F'] = '@function.outer',
                [']C'] = '@class.outer',
            },
            goto_previous_start = {
                ['[f'] = '@function.outer',
                ['[c'] = '@class.outer',
            },
            goto_previous_end = {
                ['[F'] = '@function.outer',
                ['[C'] = '@class.outer',
            },
        },
        lsp_interop = {
            enable = true,
            border = 'none',
            peek_definition_code = {
                ['<leader>cc'] = '@function.outer',
                ['<leader>ci'] = '@class.outer',
            },
        },
    },
    context_commentstring = {
        enable = true,
        enable_autocmd = false,
    },
    endwise = {
        enable = true,
    },
    matchup = {
        enable = true,
    },
})
