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
    vertical aboveleft new
  elseif direction == 'right'
    vertical belowright new
  elseif direction == 'leftend'
    vertical topleft new
  elseif direction == 'rightend'
    vertical botright new
  elseif direction == 'on'
    horizontal aboveleft new
  elseif direction == 'under'
    horizontal belowright new
  elseif direction == 'top'
    topleft new
  elseif direction == 'bottom'
    botright new
  endif
endfunction
