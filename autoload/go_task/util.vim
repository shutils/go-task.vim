function! go_task#util#parse_args(args) abort
  let l:args_dict = go_task#default#args_dict()
  for v in a:args
    if v =~ "^-autoclose="
      let l:args_dict['autoclose'] = substitute(v, "^-autoclose=", "", "")
    endif
  endfor
  return l:args_dict
endfunction
