"Done.vim

:command! -range Done
    \ <line1>,<line2>call DoneFunction()
function DoneFunction() range
echo "broken"
"    "move text to the end of file (OR a dedicate done file?)
"    ":m$ 
"    "call("m$");
"    execute "m$"
"
"    let l:firstlinePosition=a:firstline
"    let l:keywordline=getline(l:firstlinePosition)
"
"    "let l:lastfold
"
"    "GENERAL KEYWORD REPLACEMENT
"    ""take firstline, replace keyword with keyword!
"    ""let keyword = matchstr(b:titleline, '^    href=\([''"]\)\zs.\{-}\ze\1')
"    "let keyword = matchstr(b:titleline, '\_^ \{4}')
"    "execute echo keyword
"
"    "DUMB KEYWORD REPLACEMENT
"    if l:keywordline =~# 'TASK: '
"        let l:keywordSubstitution= substitute(l:keywordline, ' TASK:', ' TASK!:', "")
"        call setline(l:firstlinePosition, l:keywordSubstitution)
"        unlet l:doneTaskSbst
"    endif    
"    
"
"    "fold highlighted text up
"    "execute a:firstline.",".a:lastline."fold"
"    
"
"    "close up
"    unlet l:keywordline
endfunction

function Move(...)
    l:firstline=a:1
    l:lastline=a:2
endfunction

":command! -range DoneTask
"    \ <line1>,<line2>call DoneTaskFunction()
"function DoneTaskFunction() range
"    let b:taskname=getline(a:firstline)
"    let b:doneTaskSub = substitute(b:taskname, ' TASK:', ' TASK!:', "")
"    call setline(a:firstline, b:doneTestSub)
"    execute a:firstline.",".a:lastline."fold"
"    unlet b:taskname
"    unlet b:doneTestSub
"endfunction
"
"
":command! -range DoneTest
"    \ <line1>,<line2>call DoneTestFunction()
"function DoneTestFunction() range
"    let b:testname=getline(a:firstline)
"    let b:doneTestSub = substitute(b:testname, 'TEST:', 'TEST!:', "")
"    call setline(a:firstline, b:doneTestSub)
"    execute a:firstline.",".a:lastline."fold"
"    unlet b:testname
"    unlet b:doneTestSub
"endfunction
"
"
":command! -range DoneQuestion
"    \ <line1>,<line2>call DoneQuestionFunction()
"function DoneQuestionFunction() range
"    let b:questionname=getline(a:firstline)
"    let b:doneQuestionSub = substitute(b:questionname, ' Q:', ' Q!:', "")
"    call setline(a:firstline, b:doneQuestionSub)
"    execute a:firstline.",".a:lastline."fold"
"    unlet b:questionname
"    unlet b:doneQuestionSub
"endfunction
