local ok, notify = pcall(require, 'notify')

if not ok then
    return
end

vim.notify = notify

notify.setup({
    stages = 'fade',
    timeout = 2000
})
