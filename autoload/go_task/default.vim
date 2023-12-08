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
    let s_direction = 'rightend'
  else
    let s_direction = g:go_task_s_direction
  endif

  if g:go_task_r_direction is v:null
    let r_direction = 'bottom'
  else
    let r_direction = g:go_task_r_direction
  endif

  if g:go_task_s_adjust is v:null
    let s_adjust = 'true'
  else
    let s_adjust = g:go_task_s_adjust
  endif

  let args_dict = {
        \   "r_autoclose": r_autoclose,
        \   "s_autoclose": s_autoclose,
        \   "s_direction": s_direction,
        \   "r_direction": r_direction,
        \   "s_adjust": s_adjust,
        \ }
  return args_dict
endfunction

function! go_task#default#args_cmp(arglead, cmdline, cursorpos) abort
  if a:arglead == "-s_autoclose=" || a:arglead == "-r_autoclose=" || a:arglead == "-s_adjust"
    return ["true", "false"]
  elseif a:arglead == "-s_direction=" || a:arglead == "-r_direction="
    return ["left", "right", "leftend", "rightend", "on", "under", "top", "bottom"]
  endif
  return go_task#default#add_prefix_suffix_to_args(go_task#default#args_list())
endfunction

function! go_task#default#args_list() abort
  return [
        \   "r_autoclose",
        \   "s_autoclose",
        \   "s_direction",
        \   "r_direction",
        \   "s_adjust",
        \ ]
endfunction

function! go_task#default#add_prefix_suffix_to_args(args) abort
  let result = []
  for arg in a:args
    call add(result, '-' . arg . '=')
  endfor
  return result
endfunction
