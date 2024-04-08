"got below to work reading through :h write *backtick-expansion* *`-expansion*  
:command! -bang -range  NewTask
    \ let b:timestamp=strftime("task.%y%m%d.%H%M%S.txt")                           
    \ | call writefile([b:timestamp, "- " . expand('%:t'), ""], b:timestamp)
    \ | <line1>,<line2>write >> `=b:timestamp` 
    \ | <line1>,<line2>delete _                                                    
    \ | put!=b:timestamp "TODO put TASK: NAME above and STATUS: ___ below
    \ | unlet b:timestamp                                                          

    "expand('%:t') uses the special filename character % and gets only the tail
    "the original option was @% which takes the filename from the register,
    "but that uses a filepath which might not be what i want

    "TODO how can i make this use the current files filename instead of 
    "assuming that the filename is written at the top of the file

    "see also :h redir, 
    "https://stackoverflow.com/questions/37807520/vim-how-to-append-the-content-of-a-variable-to-a-file
    "https://www.brianstorti.com/vim-registers/
    "append(), 
    "writefile( getreg()) 
    "https://vi.stackexchange.com/questions/25996/write-register-0-to-file

    "backup lines
    "\ | call writefile([b:timestamp, "- " . getline(1), ""], b:timestamp)
    "\ | <line1>,<line2>write >> `=b:timestamp` 
