local ok, rest = pcall(require, 'rest-nvim')
if not ok then
    return
end

rest.setup({
    result_split_horizontal = false,
    result_split_in_place = false,
    result = {
        -- toggle showing URL, HTTP info, headers at top the of result window
        show_url = true,
        show_http_info = true,
        show_headers = true,
    },
    jump_to_request = false,
})
