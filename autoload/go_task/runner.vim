function! go_task#runner#exec() abort
  let l:tasks = b:tasks
  let l:config = b:config
  let l:index = line('.') - 1
  let l:selector_burnr = bufnr("%")
  execute 'new'

  if l:config['selectorclose'] == 'true'
    execute 'bd! ' . l:selector_burnr
  endif

  execute 'term ' . 'task ' . l:tasks[l:index]
  if l:config['autoclose'] == 'true'
    call go_task#autocmd#_set_buffer_autoclose()
  endif
endfunction
