function! go_task#open_selector() abort
  let s:task_json = system('task --json  --list-all')
  let s:decoded_task = json_decode(s:task_json)
  let s:tasks = []
  for v in s:decoded_task['tasks']
    call add(s:tasks, v['name'])
  endfor

  execute 'vnew'
  set buftype=nofile
  call append(0, s:tasks)
  execute line('$') . 'delete'

  nnoremap <buffer> <CR> :call go_task#exec()<CR>
  nnoremap <buffer> <silent> q :bd!<CR>
endfunction

function! go_task#exec() abort
  let s:index = line('.') - 1
  execute 'new'
  execute 'term ' . 'task ' . s:tasks[s:index]
endfunction
