function! line#inner()
  norm! m`
  keepj norm! ^vg_
endfunction

" Special handling for the 'delete' operator:
" it deletes the whole line but only the "inner" line gets into the register
function! line#inner_delete(reg)
  norm! m`
  exec 'keepj norm! ^vg_"'.a:reg.'d'
  norm! "_dd
endfunction
