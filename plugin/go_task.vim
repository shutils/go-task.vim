command! -nargs=* GoTask call go_task#open_selector(<f-args>)
command! -nargs=0 GoTaskInit call go_task#api#init_taskfile()

let g:go_task_custom_task_cmd_name = v:null
let g:go_task_autoclose = v:null
let g:go_task_selectorclose = v:null
let g:go_task_direction = v:null
let g:go_task_rdirection = v:null
