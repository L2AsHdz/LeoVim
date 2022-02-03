local ok, sidebar = pcall(require, 'sidebar-nvim')
if not ok then
    return
end

sidebar.setup({
    side = 'right',
    initial_width = 30,
    sections = {
        'git',
        'diagnostics',
        'buffers',
        'symbols',
    },
    buffers = { icon = '', ignored_buffers = { 'NvimTree', 'SidebarNvim_*' } },
    symbols = { icon = 'ƒ' },
    disable_closing_prompt = true,
})
