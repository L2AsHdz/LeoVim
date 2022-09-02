local ok, comment = pcall(require, 'Comment')
local ok_cmt_str, integration_comment = pcall(require, 'ts_context_commentstring.integrations.comment_nvim')

if not ok or not ok_cmt_str then
    return
end

comment.setup({
    pre_hook = integration_comment.create_pre_hook(),
})
