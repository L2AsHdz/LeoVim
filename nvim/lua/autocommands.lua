vim.cmd([[
    function StayCenteredI()
      let line = line(".")
      if line != get(b:, 'last_line', 0)
        let col = getcurpos()[4]
        normal! zz
        call cursor(line, col)
        let b:last_line = line
      endif
    endfunction
    function StayCentered()
      let line = line(".")
      if line != get(b:, 'last_line', 0)
        normal! zz
        let b:last_line = line
      endif
    endfunction
    augroup StayCentered
      autocmd!
      autocmd CursorMovedI * :call StayCenteredI()
      autocmd CursorMoved * :call StayCentered()
    augroup END
  ]])
