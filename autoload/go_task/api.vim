function! go_task#api#get_task_list() abort
  let task_cmd = go_task#util#get_custom_task_cmd()
  let cmd = task_cmd . ' --json --list-all'
  let task_json = system(cmd)
  let decoded_task = json_decode(task_json)
  let tasks = []
  for v in decoded_task['tasks']
    call add(tasks, v['name'])
  endfor
  return tasks
endfunction

function! go_task#api#init_taskfile() abort
  let task_cmd = go_task#util#get_custom_task_cmd()
  let cmd = task_cmd . ' --init'
  let std = system(cmd)
  if stridx(std, 'exists') isnot -1
    echom std
  else
    echom 'Created.'
  endif
endfunction
