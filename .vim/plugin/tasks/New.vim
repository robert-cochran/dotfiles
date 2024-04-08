"New.vim

:command! -range New
    \ <line1>,<line2>call NewFunction()
function NewFunction() range
    let b:firstline=getline(a:firstline)
    let b:lastline=getline(a:lastline)

    "# in =~# is for matching case, =~? ignores case
    if b:firstline =~# 'TASK: '
        call NewFileFunction('task', a:firstline, a:lastline)
    elseif b:firstline =~# 'TEST: '
        call NewFileFunction('test', a:firstline, a:lastline)
    elseif b:firstline =~# 'TICKET: '
        call NewFileFunction('ticket', a:firstline, a:lastline)
    elseif b:firstline =~# 'LOG: '
        call NewFileFunction('log', a:firstline, a:lastline)
    else
        call NewFileFunction('scratch', a:firstline, a:lastline) 
    endif 
endfunction


function NewFileFunction(...) range
    let l:fileprefix=a:1
    let l:firstline=a:2
    let l:lastline=a:3
    let l:uniqFilename=strftime(l:fileprefix . ".%y%m%d.%H%M%S.txt")
    call writefile([l:uniqFilename, "- " . expand('%:t'), ""], l:uniqFilename)
    call writefile(getline(l:firstline,l:lastline), l:uniqFilename, "a")
    let l:firstlineTxt=getline(l:firstline)
    let l:lastlineTxt=getline(l:lastline)
    execute l:firstline.",".l:lastline."delete _"
    if l:lastlineTxt =~# 'STATUS: '
        put!=l:lastlineTxt
    endif 
    put!='    FILE:    '.l:uniqFilename "note, cant use double quotes here
    let l:upperKeyword=toupper(l:fileprefix) . ': '
    if l:firstlineTxt =~# l:upperKeyword 
        put!=l:firstlineTxt
    endif 
    put!="<CR>"
    unlet l:uniqFilename
endfunction

