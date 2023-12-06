command! -nargs=* GoTask call go_task#open_selector(<f-args>)
command! -nargs=0 GoTaskInit call go_task#api#init_taskfile()

let g:go_task_custom_task_cmd_name = v:null
