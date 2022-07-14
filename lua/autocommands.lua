local ac = require('utils.core').ac
local ag = require('utils.core').ag
local StayCentered = require('utils.cursor').StayCentered

local stay_group = ag('StayCentered')
ac('CursorMovedI', stay_group, function() StayCentered(true) end)
ac('CursorMoved', stay_group, function() StayCentered(false) end)

local resize_group = ag('Resize')
ac('VimResized', resize_group, function() require('bufresize').resize() end)

local yank_group = ag('Yank')
ac('TextYankPost', yank_group, function() vim.highlight.on_yank({ higroup = 'Search', timeout = 300 }) end)

-- local winbar_group = ag('NiceWinBar')
-- ac({ 'CursorMoved', 'CursorMovedI', 'BufWinEnter' }, winbar_group, function()
--     require('config.winbar').get_winbar()
-- end)
