local ok, cinnamon = pcall(require, 'cinnamon')

if not ok then
    return
end

cinnamon.setup({
    default_keymaps = false,
    centered = true,
    hide_cursor = true,
    always_scroll = true,
    default_delay = 3,
    scroll_limit = 100,
    max_length = 500,
})
