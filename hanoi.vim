function! s:hanoi(n, x, y, z) abort
  let l:ans=""

  if a:n > 1
    let l:ans=l:ans . s:hanoi(a:n - 1, a:x, a:z, a:y)
  endif

  let l:ans=l:ans . a:x . "=>" . a:y . "\n"

  if a:n > 1
    let l:ans=l:ans . s:hanoi(a:n - 1, a:z, a:y, a:x)
  endif

  return l:ans
endfunction

let s:input = str2nr(getline(1, '$')[0])
enew
put=s:hanoi(s:input, 'a', 'b', 'c')
2,$print
