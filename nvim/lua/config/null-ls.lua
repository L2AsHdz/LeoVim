local status_ok, null_ls = pcall(require, 'null-ls')
if not status_ok then
    return
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local code_actions = null_ls.builtins.code_actions

null_ls.setup({
    sources = {
        formatting.stylua.with({
            extra_args = { '--quote-style', 'AutoPreferSingle', '--indent-type', 'Spaces', 'indent-width', '4' },
        }),
        formatting.shfmt,
        formatting.uncrustify,
        formatting.prettierd,

        diagnostics.cppcheck,
        diagnostics.luacheck.with({ extra_args = { '--no-global', '--no-unused' } }),
        diagnostics.php,
        -- diagnostics.eslint_d,
        diagnostics.vint,

        code_actions.eslint_d,
        code_actions.gitsigns,
    },
})
