function! go_task#util#parse_args(args) abort
  let l:args_dict = go_task#default#args_dict()
  for v in a:args
    if v =~ "^-autoclose="
      let l:args_dict['autoclose'] = substitute(v, "^-autoclose=", "", "")
    endif
    if v =~ "^-selectorclose="
      let l:args_dict['selectorclose'] = substitute(v, "^-selectorclose=", "", "")
    endif
    if v =~ "^-direction="
      let l:args_dict['direction'] = substitute(v, "^-direction=", "", "")
    endif
  endfor
  return l:args_dict
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
