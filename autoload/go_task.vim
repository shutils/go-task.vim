function! go_task#open_selector() abort
  let s:tasks = go_task#api#get_task_list()
  call go_task#ui#open_task_selector(s:tasks)
  call go_task#keymap#set_selector_keymap()
endfunction
