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

onoremap <silent> <Plug>(inner_line)        :<C-U>call line#inner()<CR>
nnoremap <silent> <Plug>(inner_line_delete) :<C-U>call line#inner_delete(v:register)<CR>
xnoremap <silent> <Plug>(inner_line)        :<C-U>call line#inner()<CR>

if get(g:, 'line_default_mappings', 1)
  omap <silent> _  <Plug>(inner_line)
  nmap <silent> d_ <Plug>(inner_line_delete)
  xmap <silent> _  <Plug>(inner_line)
endif

let &cpo = s:save_cpo
unlet s:save_cpo
