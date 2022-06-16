local theme = 'rose-pine'
local ok, colorscheme = pcall(require, theme)
if not ok then
    return
end
-- vim.g.everforest_background = 'hard'
-- vim.g.everforest_sign_column_background = 'none'
colorscheme.setup({
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

vim.cmd([[
    colorscheme rose-pine
    hi CursorLine guibg=#44415a
    hi Search guibg=#596275
]])
