:command! -range NewTask
    \ <line1>,<line2>call NewTaskFunction()

function NewTaskFunction() range
    "get unique filename
    let b:timestamp=strftime("task.%y%m%d.%H%M%S.txt")

    "write unique filename and current filename to top of new file"
    call writefile([b:timestamp, "- " . expand('%:t'), ""],  b:timestamp)

    "append highlighted text to new file"
    call writefile(getline(a:firstline,a:lastline), b:timestamp, "a")

    let b:taskname=getline(a:firstline)
    let b:status=getline(a:lastline)

    "delete highlighted text from current file
    execute a:firstline.",".a:lastline."delete _"
    "call deletebufline(bufname("%"),a:firstline,a:lastline)

    if b:status =~# 'STATUS: '
        put!=b:status
    endif 

    "paste the new unique filename into current file
    put!='    FILE:    '.b:timestamp "note, cant use double quotes here

    if b:taskname =~# 'TASK: '
        put!=b:taskname
    endif 
    
    put!="<CR>"

    "erase variable
    unlet b:timestamp
endfunction


":command! -bang -range  NewTask
"    \ let b:timestamp=strftime("task.%y%m%d.%H%M%S.txt")
"    \ | call writefile([b:timestamp, "- " . expand('%:t'), ""], b:timestamp)
"    \ | <line1>,<line2>write >> `=b:timestamp`
"    \ | <line1>,<line2>delete _
"    \ | put!=b:timestamp "TODO put TASK: NAME above and STATUS: ___ below
"    \ | unlet b:timestamp



"    old failed delete attempts
"
    ":4d 2
    "call deletebufline(bufname("%"),1,10)
    ":<a:firstline>d 4
    "`a:firstline`d _
    "<a:firstline,a:lastline>delete _
    ":a:firstline,a:lastline delete _
    "deletebufline(expand('%:t'), a:firstline, a:lastline)
    "execute '<a:firstline>,<a:lastline> delete _'
