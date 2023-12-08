function! go_task#selector#open_task_selector(task_info, config) abort
  call go_task#ui#open_buffer(a:config["s_direction"])
  let b:task_info = a:task_info
  let b:config = a:config
  let task_names = []
  for task_node in b:task_info['tasks']
    call add(task_names, task_node['name'])
  endfor
  call append(0, task_names)
  execute line('$') . 'delete'
  normal! gg

  " In order not to destroy the existing buffer size
  if index(['left', 'right', 'leftend', 'rightend'], b:config['s_direction']) != -1 && b:config['s_adjust'] == 'true'
    call go_task#ui#adjust_buffer_width()
  endif
  setlocal buftype=nofile
  setlocal nomodifiable
  setlocal nonumber
endfunction
