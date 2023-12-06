function! go_task#ui#open_task_selector(tasks) abort
  execute 'vnew'
  let b:tasks = a:tasks
  call append(0, a:tasks)
  execute line('$') . 'delete'
  setlocal buftype=nofile
  setlocal nomodifiable
  setlocal nonumber
endfunction
