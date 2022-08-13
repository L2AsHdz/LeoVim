local opts
opts = {
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT',
            },
            diagnostics = {
                globals = { 'vim' },
            },
            workspace = {
                library = {
                    [vim.fn.expand('$VIMRUNTIME/lua')] = true,
                    [vim.fn.stdpath('config') .. '/lua'] = true,
                },
            },
            format = {
                enable = false,
            },
        },
    },
}

local lua_dev = require('lua-dev').setup({ library = { plugins = false } })
opts = vim.tbl_deep_extend('force', opts, lua_dev)

return opts
