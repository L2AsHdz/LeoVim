local hl = require('utils.core').hl

hl('CmpItemAbbrDeprecated', { bg = '', fg = '#808080' })
hl('CmpItemAbbrMatch', { bg = '', fg = '#569CD6' })
hl('CmpItemAbbrMatchFuzzy', { bg = '', fg = '#569CD6' })
hl('CmpItemKindVariable', { bg = '', fg = '#9CDCFE' })
hl('CmpItemKindInterface', { bg = '', fg = '#9CDCFE' })
hl('CmpItemKindText', { bg = '', fg = '#9CDCFE' })
hl('CmpItemKindFunction', { bg = '', fg = '#C586C0' })
hl('CmpItemKindMethod', { bg = '', fg = '#C586C0' })
hl('CmpItemKindKeyword', { bg = '', fg = '#D4D4D4' })
hl('CmpItemKindProperty', { bg = '', fg = '#D4D4D4' })
hl('CmpItemKindUnit', { bg = '', fg = '#D4D4D4' })
hl('CmpItemKindCopilot', { fg = '#6CC644' })

local kind_icons = {
    Text = '',
    Method = '',
    Function = '',
    Constructor = '',
    Field = '',
    Variable = '',
    Class = 'ﴯ',
    Interface = '',
    Module = '',
    Property = '',
    Unit = '塞',
    Value = '',
    Enum = '',
    Keyword = '',
    Snippet = '',
    Color = '',
    File = '',
    Reference = '',
    Folder = 'ﱮ',
    EnumMember = '',
    Constant = '',
    Struct = '',
    Event = '',
    Operator = '',
    TypeParameter = '',
}

local cmp_ok, cmp = pcall(require, 'cmp')
if not cmp_ok then
    return
end

local snip_status_ok, luasnip = pcall(require, 'luasnip')
if not snip_status_ok then
    return
end

local has_words_before = function()
    if vim.api.nvim_buf_get_option(0, 'buftype') == 'prompt' then
        return false
    end
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and vim.api.nvim_buf_get_text(0, line - 1, 0, line - 1, col, {})[1]:match('^%s*$') == nil
end

require('luasnip.loaders.from_vscode').lazy_load()

cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-u>'] = cmp.mapping.scroll_docs(-4),
        ['<C-d>'] = cmp.mapping.scroll_docs(4),
        ['<C-j>'] = cmp.mapping.select_next_item(),
        ['<C-k>'] = cmp.mapping.select_prev_item(),
        ['<C-space>'] = cmp.mapping.complete(),
        ['<ESC>'] = cmp.mapping.abort(),
        ['<C-c>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true }),

        ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() and has_words_before() then
                cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            else
                fallback()
            end
        end),
        ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end),
    }),
    view = {
        entries = { name = 'custom', selection_order = 'near_cursor' },
    },
    formatting = {
        fields = { 'abbr', 'kind' },
        format = function(entry, vim_item)
            -- vim_item.kind = string.format("%s", kind_icons[vim_item.kind])
            -- This concatonates the icons with the name of the item kind
            if entry.source.name == 'copilot' then
                vim_item.kind = ' Copilot'
                vim_item.kind_hl_group = 'CmpItemKindCopilot'
                return vim_item
            else
                vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind], vim_item.kind)
            end
            return vim_item
        end,
    },
    sources = {
        { name = 'copilot' },
        { name = 'nvim_lsp' },
        { name = 'nvim_lua' },
        { name = 'luasnip' },
        { name = 'buffer' },
        { name = 'path' },
    },
    window = {
        documentation = {
            border = { '╭', '─', '╮', '│', '╯', '─', '╰', '│' },
        },
        -- completion = {
        --     border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
        -- }
    },
})

cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'buffer' },
    },
})

cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'path' },
        { name = 'cmdline' },
    },
})
