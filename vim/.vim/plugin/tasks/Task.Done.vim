:command! -range DoneTask
    \ <line1>,<line2>call DoneTaskFunction()

function DoneTaskFunction() range
    "get unique filename
    "let b:timestamp=strftime("test.%y%m%d.%H%M%S.txt")

    "write unique filename and current filename to top of new file"
    "call writefile([b:timestamp, '- ' . expand('%:t'), ''],  b:timestamp)

    "append highlighted text to new file"
    "call writefile(getline(a:firstline,a:lastline), b:timestamp, 'a')

    "let b:testname=getline(a:firstline)
    "let b:status=getline(a:lastline)

    "delete highlighted text from current file
    "execute a:firstline.",".a:lastline."delete _"
    "call deletebufline(bufname("%"),a:firstline,a:lastline)

    "if b:status =~# 'STATUS: '
    "    put!=b:status
    "endif 

    "paste the new unique filename into current file
    "put!='FILE:    '.b:timestamp "note, cant use double quotes here

    "if b:testname =~# 'TEST: '
    "    "call setline(a:firstline, substitute(line, '\([^= ]\)=', '\1 =', ""))
    "    call setline(a:firstline, substitute(a:firstline, 'TEST:', 'TEST!:', ""))
    "    "put!=b:testname
    "endif 
    "let line = getline(".")
    "let repl = substitute(line, '\a', "*", "g")
    "call setline(".", repl)

    let b:taskname=getline(a:firstline)
    let b:doneTaskSub = substitute(b:taskname, ' TASK:', ' TASK!:', "")
    call setline(a:firstline, b:doneTestSub)

    "put!="<CR>"

    "fold done task up
    execute a:firstline.",".a:lastline."fold"

    "erase variable
    unlet b:taskname
    unlet b:doneTestSub

endfunction

