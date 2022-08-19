local status_ok, toggleterm = pcall(require, 'toggleterm')
if not status_ok then
    return
end

toggleterm.setup({
    open_mapping = [[<A-\>]],
    hide_numbers = true,
    shade_filetypes = {},
    shading_factor = 2,
    start_in_insert = true,
    insert_mappings = true,
    persist_size = true,
    direction = 'horizontal',
    close_on_exit = true,
    shell = vim.o.shell,
    float_opts = {
        border = 'curved',
        winblend = 2,
    },
})
