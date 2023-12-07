function! go_task#open_selector(...) abort
  let config = go_task#util#parse_args(a:000)
  let s:tasks = go_task#api#get_task_list()
  call go_task#ui#open_task_selector(s:tasks, config)
  call go_task#keymap#set_selector_keymap()
endfunction
