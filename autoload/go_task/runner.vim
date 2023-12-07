function! go_task#runner#exec() abort
  let tasks = b:tasks
  let config = b:config
  let index = line('.') - 1
  let selector_burnr = bufnr("%")
  execute 'new'

  if config['selectorclose'] == 'true'
    execute 'bd! ' . selector_burnr
  endif

  let cmd = 'task ' . tasks[index]
  if !has('nvim')
    if config['autoclose'] == 'true'
      let job_id = term_start(cmd, {'exit_cb': 'go_task#util#on_exit', 'curwin': v:true})
    else
      let job_id = term_start(cmd, {'curwin': v:true})
    endif
    call go_task#keymap#set_runner_keymap()
  else
    let cmd = 'term ' . cmd
    execute cmd
    call go_task#keymap#set_runner_keymap()
    if config['autoclose'] == 'true'
      call go_task#autocmd#_set_buffer_autoclose()
    endif
  endif

endfunction
