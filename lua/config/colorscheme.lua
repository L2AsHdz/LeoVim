local hl = require('utils.core').hl
local colorscheme_name = 'catppuccin'
local ok, colorscheme = pcall(require, colorscheme_name)
if not ok then
    return
end
-- vim.g.everforest_background = 'hard'
-- vim.g.everforest_sign_column_background = 'none'
vim.g.catppuccin_flavour = 'mocha'
colorscheme.setup({
    compile = {
        enabled = true,
        path = vim.fn.stdpath('cache') .. '/catppuccin',
    },
    styles = {
        comments = {},
        conditionals = {},
    },
    integrations = {
        gitsigns = true,
        navic = {
            enabled = true,
            custom_bg = 'NONE',
        },
        neogit = true,
        symbols_outline = true,
        treesitter_context = true,
        ts_rainbow = true,
        which_key = true,
    },
})
--[[ rose_pine.setup({ ]]
--[[     dark_variant = 'main', ]]
--[[     -- dim_nc_background = true, ]]
--[[     -- disable_background = true, ]]
--[[     -- disable_float_background = false, ]]
--[[     disable_italics = true, ]]
--[[     groups = { ]]
--[[         git_add = 'foam', ]]
--[[         git_change = 'gold', ]]
--[[         git_delete = 'love', ]]
--[[         git_dirty = 'rose', ]]
--[[ 		git_ignore = 'muted', ]]
--[[ 		git_merge = 'iris', ]]
--[[ 		git_rename = 'pine', ]]
--[[ 		git_stage = 'iris', ]]
--[[         git_text = 'text' ]]
--[[     } ]]
--[[ }) ]]

vim.api.nvim_command('colorscheme ' .. colorscheme_name)

hl('CursorLine', { bg = '#44415a' })
hl('CurSearch', { link = 'IncSearch' })
