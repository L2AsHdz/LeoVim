local ok, specs = pcall(require, 'specs')

if not ok then
    return
end

specs.setup({
    show_jumps = false,
    popup = {
        winhl = 'IncSearch',
        inc_ms = 10,
        width = 20,
        fader = require('specs').linear_fader,
        resizer = require('specs').empty_resizer,
    },
    ignore_filetypes = {},
    ignore_buftypes = {
        nofile = true
    },
})
