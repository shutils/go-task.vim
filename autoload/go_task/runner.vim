function! go_task#runner#exec() abort
  let task_cmd = go_task#util#get_custom_task_cmd()
  let task_info = b:task_info
  let location = task_info['location']
  let config = b:config
  let index = line('.') - 1
  let task_name = task_info['tasks'][index]['name']
  let selector_burnr = bufnr("%")
  call go_task#ui#open_buffer(config['r_direction'])

  if config['s_autoclose'] == 'true'
    execute 'bd! ' . selector_burnr
  endif

  let cmd = task_cmd. ' --dir ' . location . ' ' . task_name
  if !has('nvim')
    if config['r_autoclose'] == 'true'
      let job_id = term_start(cmd, {'exit_cb': 'go_task#util#on_exit', 'curwin': v:true})
    else
      let job_id = term_start(cmd, {'curwin': v:true})
    endif
    call go_task#keymap#set_runner_keymap()
  else
    let cmd = 'term ' . cmd
    execute cmd
    normal! G
    call go_task#keymap#set_runner_keymap()
    if config['r_autoclose'] == 'true'
      call go_task#autocmd#set_buffer_autoclose()
    endif
  endif

endfunction
