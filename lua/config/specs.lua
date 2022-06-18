local ok, specs = pcall(require, 'specs')

if not ok then
    return
end

specs.setup({
    show_jumps = false,
    popup = {
        winhl = 'NvimTreeWindowPicker',
        inc_ms = 10,
        width = 40,
        fader = require('specs').linear_fader,
        resizer = require('specs').slide_resizer,
    },
    ignore_filetypes = {},
    ignore_buftypes = {
        nofile = true
    },
})
