local ok, dressing = pcall(require, 'dressing')
if not ok then
    return
end

dressing.setup({
    input ={
        enable = true,
        default_prompt = '➤ '
    },
    select = {
        enable = true,
        backend = {'telescope', 'builtin', 'nui'},
        get_config = function(opts)
            if opts.kind == 'codeaction' then
                return {
                    backend = 'builtin',
                    nui = {
                        relative = 'cursor',
                        max_width = 40,
                    }
                }
            end
        end
    }
})
