function! go_task#ui#open_task_selector(tasks, config) abort
  call go_task#ui#direction(a:config)
  let b:tasks = a:tasks
  let b:config = a:config
  call append(0, a:tasks)
  execute line('$') . 'delete'
  normal! gg
  setlocal buftype=nofile
  setlocal nomodifiable
  setlocal nonumber
endfunction

function! go_task#ui#direction(config) abort
  let direction = a:config["direction"]
  if direction == 'left'
    execute 'vnew'
  elseif direction == 'right'
    execute 'vnew'
    wincmd L
  elseif direction == 'top'
    execute 'new'
  elseif direction == 'bottom'
    execute 'new'
    wincmd R
  endif
endfunction
