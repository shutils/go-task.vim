function! go_task#runner#exec() abort
  let l:tasks = b:tasks
  let l:config = b:config
  let l:index = line('.') - 1
  execute 'new'
  execute 'term ' . 'task ' . l:tasks[l:index]
  if l:config['autoclose'] == 'true'
    call go_task#autocmd#_set_buffer_autoclose()
  endif
endfunction
