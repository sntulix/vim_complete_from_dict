" prototype version (2020-07-05)

fun! CompleteByDict(findstart, base)
  if a:findstart
    let line = getline('.')
    let start = col('.') - 1
    while start > 0 && line[start - 1] =~ '\l'
      let start -= 1
    endwhile
    let start -= 1
    return start
  else
    let res = []
    for m in readfile("3dcg.dict")
      if m =~ '^' . a:base
        call add(res, m)
      endif
    endfor
    return res
  endif
endfun
set completefunc=CompleteByDict
