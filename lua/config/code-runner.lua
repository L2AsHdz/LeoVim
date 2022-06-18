local ok, code_runner = pcall(require, 'code_runner')

if not ok then
    return
end

code_runner.setup({
    filetype = {
        java = 'cd $dir && javac $fileName && java $fileNameWithoutExt',
        javascript = 'node',
        python = 'python3 -u',
        typescript = 'deno run',
    },
})
