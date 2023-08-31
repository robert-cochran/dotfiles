:command! -range InsertNewTask
    \ <line1>,<line2>call InsertNewTaskFunction()

function InsertNewTaskFunction() range
    put='TASK:'

    "paste the new unique filename into current file
    put='CONTEXT:'

    put='STATUS:        PENDING'
    
endfunction

