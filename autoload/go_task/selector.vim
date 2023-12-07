function! go_task#selector#open_task_selector(task_info, config) abort
  call go_task#selector#open_buffer(a:config)
  let b:task_info = a:task_info
  let b:config = a:config
  let task_names = []
  for task_node in b:task_info['tasks']
    call add(task_names, task_node['name'])
  endfor
  call append(0, task_names)
  execute line('$') . 'delete'
  normal! gg
  setlocal buftype=nofile
  setlocal nomodifiable
  setlocal nonumber
endfunction

function! go_task#selector#open_buffer(config) abort
  let direction = a:config["s_direction"]
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
