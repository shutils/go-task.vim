function! go_task#runner#exec() abort
  let l:tasks = b:tasks
  let l:index = line('.') - 1
  execute 'new'
  execute 'term ' . 'task ' . l:tasks[l:index]
endfunction
