local theme = 'rose-pine'
local ok, colorscheme = pcall(require, theme)
if not ok then
    return
end
-- vim.g.everforest_background = 'hard'
-- vim.g.everforest_sign_column_background = 'none'
colorscheme.setup({
    dark_variant = 'moon',
    -- dim_nc_background = true,
    -- disable_background = true,
    -- disable_float_background = false,
    disable_italics = true,
    groups = {
        git_add = '#9ccfd8',
        git_change = '#ea9a97',
        git_delete = '#eb6f92',
        git_dirty = '#ea9a97',
		git_ignore = '#6e6a86',
		git_merge = '#c4a7e7',
		git_rename = '#3e8fb0',
		git_stage = '#c4a7e7',
        git_text = '#ea9a97'
    }
})

vim.cmd([[
    colorscheme rose-pine
    hi CursorLine guibg=#44415a
    hi Search guibg=#596275
]])
