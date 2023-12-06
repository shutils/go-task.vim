function! go_task#runner#exec() abort
  let l:tasks = b:tasks
  let l:config = b:config
  let l:index = line('.') - 1
  let l:selector_burnr = bufnr("%")
  execute 'new'

  if l:config['selectorclose'] == 'true'
    execute 'bd! ' . l:selector_burnr
  endif

  let cmd = 'task ' . l:tasks[l:index]
  if !has('nvim')
    if l:config['autoclose'] == 'true'
      let job_id = term_start(cmd, {'exit_cb': 'go_task#util#on_exit', 'curwin': v:true})
    else
      let job_id = term_start(cmd, {'curwin': v:true})
    endif
  else
    let cmd = 'term ' . cmd
    execute cmd
    if l:config['autoclose'] == 'true'
      call go_task#autocmd#_set_buffer_autoclose()
    endif
  endif

endfunction
