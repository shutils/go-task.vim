function! go_task#autocmd#_set_buffer_autoclose() abort
  augroup GoTask
    autocmd! TermClose <buffer> if !v:event.status | exec 'bd! ' . expand('<abuf>') | endif
  augroup END
endfunction
