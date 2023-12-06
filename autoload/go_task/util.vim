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
