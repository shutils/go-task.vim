function! go_task#open_selector(...) abort
  let config = go_task#util#parse_args(a:000)
  let s:task_info = go_task#api#get_task_info()
  call go_task#selector#open_task_selector(s:task_info, config)
  call go_task#keymap#set_selector_keymap()
endfunction
