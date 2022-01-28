local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local check_backspace = function()
  local col = vim.fn.col "." - 1
  return col == 0 or vim.fn.getline("."):sub(col, col):match "%s"
end

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
  Text = "  ",
  Method = "  ",
  Function = "",
  Constructor = "  ",
  Field = "  ",
  Variable = "[]",
  Class = " פּ ",
  Interface = " 蘒",
  Module = "  ",
  Property = "  ",
  Unit = " 塞 ",
  Value = "  ",
  Enum = " 練",
  Keyword = "  ",
  Snippet = "  ",
  Color = "  ",
  File = "  ",
  Reference = "  ",
  Folder = " ﱮ ",
  EnumMember = "  ",
  Constant = "  ",
  Struct = "  ",
  Event = "  ",
  Operator = "  ",
  TypeParameter = "<>",
}

-- Add additional capabilities supported by nvim-cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

local lspconfig = require('lspconfig')

-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
local servers = { 'tsserver', 'angularls' }
for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        -- on_attach = my_custom_on_attach,
        capabilities = capabilities,
    }
end

local cmp = require'cmp'
local luasnip = require('luasnip')
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
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
          
        ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            -- elseif has_words_before() then
            --     cmp.complete()
            elseif check_backspace() then
                fallback()
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
        { name = 'luasnip' },
        { name = 'buffer' },
        { name = 'path' },
        { name = 'cmdline' }
    },
    documentation = {
        border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
    }
})

local lsp_installer = require("nvim-lsp-installer")

-- Register a handler that will be called for all installed servers.
-- Alternatively, you may also register handlers on specific server instances instead (see example below).
lsp_installer.on_server_ready(function(server)
    local opts = {
        on_attach
    }
    -- (optional) Customize the options passed to the server
    -- if server.name == "tsserver" then
    --     opts.root_dir = function() ... end
    -- end

    -- This setup() function is exactly the same as lspconfig's setup function.
    -- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
    server:setup(opts)
end)
