function! go_task#api#get_task_list() abort
  let l:task_json = system('task --json  --list-all')
  let l:decoded_task = json_decode(l:task_json)
  let l:tasks = []
  for v in l:decoded_task['tasks']
    call add(l:tasks, v['name'])
  endfor
  return l:tasks
endfunction
