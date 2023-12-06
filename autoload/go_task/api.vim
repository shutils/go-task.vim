function! go_task#api#get_task_list() abort
  let task_cmd = go_task#util#get_custom_task_cmd()
  let cmd = task_cmd . ' --json --list-all'
  let l:task_json = system(cmd)
  let l:decoded_task = json_decode(l:task_json)
  let l:tasks = []
  for v in l:decoded_task['tasks']
    call add(l:tasks, v['name'])
  endfor
  return l:tasks
endfunction
