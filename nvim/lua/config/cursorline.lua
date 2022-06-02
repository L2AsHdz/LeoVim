local hl = vim.api.nvim_set_hl
local au = vim.api.nvim_create_autocmd

au('VimEnter', {
    callback = function()
        hl(0, 'LspReferenceWrite', { underline = true })
        hl(0, 'LspReferenceText', { underline = true })
        hl(0, 'LspReferenceRead', { underline = true })
    end,
})

-- vim.cmd([[
--     augroup illuminate_augroup
--         autocmd!
--         autocmd VimEnter * hi link illuminatedWord CursorWord
--     augroup END
-- ]])
