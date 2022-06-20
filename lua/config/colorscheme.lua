local ok, rose_pine = pcall(require, 'rose-pine')
local hl = require('utils.core').hl
if not ok then
    return
end
-- vim.g.everforest_background = 'hard'
-- vim.g.everforest_sign_column_background = 'none'
rose_pine.setup({
    dark_variant = 'main',
    -- dim_nc_background = true,
    -- disable_background = true,
    -- disable_float_background = false,
    disable_italics = true,
    groups = {
        git_add = 'foam',
        git_change = 'gold',
        git_delete = 'love',
        git_dirty = 'rose',
		git_ignore = 'muted',
		git_merge = 'iris',
		git_rename = 'pine',
		git_stage = 'iris',
        git_text = 'text'
    }
})

vim.api.nvim_command('colorscheme rose-pine')
hl('CursorLine', { bg = '#44415a' })
hl('Search', { bg = '#ebbcba', fg = '#191724' })
