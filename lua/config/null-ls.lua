local status_ok, null_ls = pcall(require, 'null-ls')
if not status_ok then
    return
end

local b = null_ls.builtins

local sources = {
    b.formatting.stylua.with({
        extra_args = { '--quote-style', 'AutoPreferSingle', '--indent-type', 'Spaces', 'indent-width', '4' },
    }),
    b.formatting.beautysh,
    b.formatting.uncrustify,
    b.formatting.prettierd,
    b.formatting.sqlfluff.with({ extra_args = { '--dialect', 'postgres' } }),
    b.formatting.pint,

    b.diagnostics.cppcheck,
    b.diagnostics.luacheck.with({ extra_args = { '--no-global', '--no-unused' } }),
    b.diagnostics.php,
    -- diagnostics.eslint_d,
    b.diagnostics.vint,

    b.code_actions.eslint_d,
    b.code_actions.gitsigns,
    b.code_actions.refactoring,
}

null_ls.setup({
    sources = sources,
    diagnostics_format = '[#{c}] #{m} (#{s})',
})
