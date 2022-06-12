local hl = vim.api.nvim_set_hl
local au = vim.api.nvim_create_autocmd
local ag = vim.api.nvim_create_augroup

local group = ag('illuminate_augroup', { clear = true } )

au('VimEnter', {
    group = group,
    callback = function()
        hl(0, 'CursorWord', { underline = true })
        hl(0, 'LspReferenceWrite', { underline = true })
        hl(0, 'LspReferenceText', { underline = true })
        hl(0, 'LspReferenceRead', { underline = true })
        hl(0, 'illuminatedWord', { link = 'CursorWord' })
    end,
})
