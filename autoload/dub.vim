let s:save_cpo = &cpo
set cpo&vim

function! DispList(resList)

  if has('patch-8.1.1594')
    let pos = getpos('.')
    call popup_menu(a:resList, {
            \ 'line' : line('.') + 2,
            \ 'col' : col('.') + 2,
            \ 'moved' : 'any',
            \ 'filter' : 'popup_filter_menu'
            \ })
  else
    echo "未実装〜"
  endif

endfunction

function! dub#CatchCommand(...)
  let l:argumentList = a:000

  let l:dubRes = system('dub ' . l:argumentList[0])
  let l:parseRes = split(l:dubRes, '\n')

  silent call DispList(l:parseRes)
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
