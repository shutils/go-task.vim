command! -nargs=* -complete=customlist,go_task#default#args_cmp GoTask call go_task#open_selector(<f-args>)
command! -nargs=0 GoTaskInit call go_task#api#init_taskfile()

let g:go_task_custom_task_cmd_name = v:null
let g:go_task_r_autoclose = v:null
let g:go_task_s_autoclose = v:null
let g:go_task_r_direction = v:null
let g:go_task_s_direction = v:null
let g:go_task_s_adjust = v:null
