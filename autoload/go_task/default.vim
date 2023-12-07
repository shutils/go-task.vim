function! go_task#default#args_dict() abort
  if g:go_task_autoclose is v:null
    let autoclose = 'false'
  else
    let autoclose = g:go_task_autoclose
  endif

  if g:go_task_selectorclose is v:null
    let selectorclose = 'false'
  else
    let selectorclose = g:go_task_selectorclose
  endif

  if g:go_task_direction is v:null
    let direction = 'left'
  else
    let direction = g:go_task_direction
  endif

  let l:args_dict = {
        \   "autoclose": autoclose,
        \   "selectorclose": selectorclose,
        \   "direction": direction,
        \ }
  return l:args_dict
endfunction
