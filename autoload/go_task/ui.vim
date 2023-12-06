function! go_task#ui#open_task_selector(tasks, config) abort
  execute 'vnew'
  let b:tasks = a:tasks
  let b:config = a:config
  call append(0, a:tasks)
  execute line('$') . 'delete'
  normal! gg
  setlocal buftype=nofile
  setlocal nomodifiable
  setlocal nonumber
endfunction
