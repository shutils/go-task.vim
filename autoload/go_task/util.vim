function! go_task#util#parse_args(args) abort
  let args_dict = go_task#default#args_dict()
  for v in a:args
    if v =~ "^-autoclose="
      let args_dict['autoclose'] = substitute(v, "^-autoclose=", "", "")
    endif
    if v =~ "^-selectorclose="
      let args_dict['selectorclose'] = substitute(v, "^-selectorclose=", "", "")
    endif
    if v =~ "^-direction="
      let args_dict['direction'] = substitute(v, "^-direction=", "", "")
    endif
    if v =~ "^-rdirection="
      let args_dict['rdirection'] = substitute(v, "^-rdirection=", "", "")
    endif
  endfor
  return args_dict
endfunction

function! go_task#util#on_exit(job_id, status) abort
  let bufnr = ch_getbufnr(a:job_id, 'out')
  if a:status == 0
    exec "bd! " . bufnr
  endif
endfunction

function! go_task#util#get_custom_task_cmd() abort
  if g:go_task_custom_task_cmd_name is v:null
    return 'task'
  endif
  return g:go_task_custom_task_cmd_name
endfunction
