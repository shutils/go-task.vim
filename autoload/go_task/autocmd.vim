function! go_task#autocmd#set_buffer_autoclose() abort
  augroup GoTask
    autocmd! TermClose <buffer> if !v:event.status | exec 'bd! ' . expand('<abuf>') | endif
  augroup END
endfunction
