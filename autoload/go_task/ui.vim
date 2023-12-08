function! go_task#ui#open_buffer(direction) abort
  let direction = a:direction

  if direction == 'left'
    vertical aboveleft new
  elseif direction == 'right'
    vertical belowright new
  elseif direction == 'leftend'
    vertical topleft new
  elseif direction == 'rightend'
    vertical botright new
  elseif direction == 'on'
    horizontal aboveleft new
  elseif direction == 'under'
    horizontal belowright new
  elseif direction == 'top'
    topleft new
  elseif direction == 'bottom'
    botright new
  endif
endfunction

function! go_task#ui#adjust_buffer_width() abort
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
