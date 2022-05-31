local ok, cursorline = pcall(require, 'nvim-cursorline')

if not ok then
    return
end

cursorline.setup({
    cursorline = {
        enable = false,
        timeout = 500,
        number = false,
    },
    cursorword = {
        enable = true,
        min_length = 3,
        hl = { underline = true },
    },
})
