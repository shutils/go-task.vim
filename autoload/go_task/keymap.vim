function! go_task#keymap#set_selector_keymap() abort
  nnoremap <buffer> <silent> <CR> :call go_task#runner#exec()<CR>
  nnoremap <buffer> <silent> q :bd!<CR>
endfunction

function! go_task#keymap#set_runner_keymap() abort
  nnoremap <buffer> <silent> q :bd!<CR>
endfunction
