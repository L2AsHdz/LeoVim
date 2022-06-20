local core = require('utils.core')
local hl = core.hl
local ac = core.ac
local ag = core.ag

local illuminate_group = ag('illuminate_augroup')

ac('VimEnter', illuminate_group, function()
    hl('CursorWord', { underline = true })
    hl('LspReferenceWrite', { underline = true })
    hl('LspReferenceText', { underline = true })
    hl('LspReferenceRead', { underline = true })
    hl('illuminatedWord', { link = 'CursorWord' })
end)
