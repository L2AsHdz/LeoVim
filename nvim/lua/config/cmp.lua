-- gray
vim.cmd[[highlight! CmpItemAbbrDeprecated guibg=NONE gui=strikethrough guifg=#808080]]
-- blue
vim.cmd[[highlight! CmpItemAbbrMatch guibg=NONE guifg=#569CD6]]
vim.cmd[[highlight! CmpItemAbbrMatchFuzzy guibg=NONE guifg=#569CD6]]
-- light blue
vim.cmd[[highlight! CmpItemKindVariable guibg=NONE guifg=#9CDCFE]]
vim.cmd[[highlight! CmpItemKindInterface guibg=NONE guifg=#9CDCFE]]
vim.cmd[[highlight! CmpItemKindText guibg=NONE guifg=#9CDCFE]]
-- pink
vim.cmd[[highlight! CmpItemKindFunction guibg=NONE guifg=#C586C0]]
vim.cmd[[highlight! CmpItemKindMethod guibg=NONE guifg=#C586C0]]
-- front
vim.cmd[[highlight! CmpItemKindKeyword guibg=NONE guifg=#D4D4D4]]
vim.cmd[[highlight! CmpItemKindProperty guibg=NONE guifg=#D4D4D4]]
vim.cmd[[highlight! CmpItemKindUnit guibg=NONE guifg=#D4D4D4]]

local kind_icons = {
  Text = "",
  Method = "",
  Function = "",
  Constructor = "",
  Field = "",
  Variable = "",
  Class = "ﴯ",
  Interface = "",
  Module = "",
  Property = "",
  Unit = "塞",
  Value = "",
  Enum = "",
  Keyword = "",
  Snippet = "",
  Color = "",
  File = "",
  Reference = "",
  Folder = "ﱮ",
  EnumMember = "",
  Constant = "",
  Struct = "",
  Event = "",
  Operator = "",
  TypeParameter = "",
}

local cmp_ok, cmp = pcall(require, 'cmp')
if not cmp_ok then
  return
end

local snip_status_ok, luasnip = pcall(require, 'luasnip')
if not snip_status_ok then
  return
end

require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        end,
    },
    mapping = {
        ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
        ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
        ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
        ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
        ['<C-e>'] = cmp.mapping({
            i = cmp.mapping.abort(),
            c = cmp.mapping.close(),
        }),
        ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true
        }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.

        ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            -- elseif has_words_before() then
            --     cmp.complete()
            else
                fallback()
            end
        end, { "i", "c" }),
        
        ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, { "i", "c" }),
    },
    formatting = {
        fields = { "abbr", "kind" },
        format = function(entry, vim_item)
            -- vim_item.kind = string.format("%s", kind_icons[vim_item.kind])
            vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind], vim_item.kind) -- This concatonates the icons with the name of the item kind
            return vim_item
        end
    },
    sources = {
        { name = 'nvim_lsp' },
        { name = 'nvim_lua' },
        { name = 'luasnip' },
        { name = 'buffer' },
        { name = 'path' },
        { name = 'cmdline' }
    },
    documentation = {
        border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
    }
})
