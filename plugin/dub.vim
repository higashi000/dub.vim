if exists('g:loaded_dubvim')
  finish
endif
let g:loaded_dubvim = 1

let s:save_cpo = &cpo
set cpo&vim

let &cpo = s:save_cpo
unlet s:save_cpo
