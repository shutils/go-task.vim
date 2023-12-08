function! go_task#util#parse_args(args) abort
  let args_dict = go_task#default#args_dict()
  for v in a:args
    if v =~ "^-r_autoclose="
      let args_dict['r_autoclose'] = substitute(v, "^-r_autoclose=", "", "")
    endif
    if v =~ "^-s_autoclose="
      let args_dict['s_autoclose'] = substitute(v, "^-s_autoclose=", "", "")
    endif
    if v =~ "^-s_direction="
      let args_dict['s_direction'] = substitute(v, "^-s_direction=", "", "")
    endif
    if v =~ "^-r_direction="
      let args_dict['r_direction'] = substitute(v, "^-r_direction=", "", "")
    endif
    if v =~ "^-s_adjust="
      let args_dict['s_adjust'] = substitute(v, "^-s_adjust=", "", "")
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

function! go_task#util#adjust_buffer_width() abort
  let total_lines = line('$')
  let max_width = 0
  let padding = 6

  for i in range(1, total_lines)
      let line_width = strdisplaywidth(getline(i))
      if line_width > max_width
          let max_width = line_width
      endif
  endfor

  let adjust_width = max_width + padding

  execute 'vertical resize ' . adjust_width
endfunction
