local ok, bufferline = pcall(require, 'bufferline')
if not ok then
    return
end

local highlights = require('rose-pine.plugins.bufferline')

bufferline.setup({
    highlights = highlights,
    options = {
        themable = true,
        separator_style = 'padded_slant',
        diagnostics = 'nvim_lsp',
        diagnostics_update_in_insert = true,
        offsets = {
            {
                filetype = 'NvimTree',
                text = 'NvimTree',
                highlight = 'Directory',
                text_align = 'center',
            },
            {
                filetype = 'SidebarNvim',
                text = 'SidebarNvim',
                text_align = 'center',
            },
        },
        show_tab_indicators = true,
    },
})
