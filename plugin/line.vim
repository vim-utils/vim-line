" ============================================================================
" File: line.vim
" Author: Bruno Sutic
" WebPage: https://github.com/bruno-/vim-line
" ============================================================================

if exists('g:loaded_line') && g:loaded_line
  finish
endif
let g:loaded_line = 1

let s:save_cpo = &cpo
set cpo&vim

function! line#inner()
  norm! m`
  keepj norm! ^vg_
endfunction

onoremap <silent> <Plug>(inner_line) :<C-U>call line#inner()<CR>
xnoremap <silent> <Plug>(inner_line) :<C-U>call line#inner()<CR>

if get(g:, 'line_default_mappings', 1)
  omap <silent> _ <Plug>(inner_line)
  xmap <silent> _ <Plug>(inner_line)
endif

let &cpo = s:save_cpo
unlet s:save_cpo
