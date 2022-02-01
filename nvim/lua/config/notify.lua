vim.notify = require("notify")

local ok, notify = pcall(require, 'notify')
if not ok then
    return
end

notify.setup({
    stages = 'fade',
    timeout = 2000
})
