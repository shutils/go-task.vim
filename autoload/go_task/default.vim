function! go_task#default#args_dict() abort
  if g:go_task_r_autoclose is v:null
    let r_autoclose = 'false'
  else
    let r_autoclose = g:go_task_r_autoclose
  endif

  if g:go_task_s_autoclose is v:null
    let s_autoclose = 'false'
  else
    let s_autoclose = g:go_task_s_autoclose
  endif

  if g:go_task_s_direction is v:null
    let s_direction = 'left'
  else
    let s_direction = g:go_task_s_direction
  endif

  if g:go_task_r_direction is v:null
    let r_direction = 'bottom'
  else
    let r_direction = g:go_task_r_direction
  endif

  let args_dict = {
        \   "r_autoclose": r_autoclose,
        \   "s_autoclose": s_autoclose,
        \   "s_direction": s_direction,
        \   "r_direction": r_direction,
        \ }
  return args_dict
endfunction
