local ok, cybu = pcall(require, 'cybu')

if not ok then
    return
end

cybu.setup({
    position = {
        relative_to = 'editor',
        anchor = 'center',
        max_win_height = 10,
    },
    style = {
        border = 'rounded',
        hide_buffer_id = true,
        padding = 5,
    },
    display_time = 1000,
})
