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
        path = 'relative',
        path_abbreviation = 'shortened',
        border = 'rounded',
        hide_buffer_id = true,
        padding = 5,
    },
    behavior = {
        mode = {
            last_used = {
                switch = 'immediate',
            }
        }
    },
    display_time = 1000,
    exclude = {
        'Nvim-Tree',
        'qf',
        'alpha',
        'Outline'
    },
})
