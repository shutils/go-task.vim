function! go_task#default#args_dict() abort
  let l:args_dict = {
        \   "autoclose": "false",
        \   "selectorclose": "false",
        \   "direction": "left",
        \ }
  return l:args_dict
endfunction
