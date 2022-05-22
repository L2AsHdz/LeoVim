local ok, bufferline = pcall(require, 'bufferline')
if not ok then
    return
end

bufferline.setup({
    options = {
        separator_style = 'padded_slant',
        diagnostics = 'nvim_lsp',
        diagnostics_update_in_insert = true,
        offsets = {
            {
                filetype = 'NvimTree',
                text = 'NvimTree - File Explorer',
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
