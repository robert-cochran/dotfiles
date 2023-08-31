:command! -range InsertNewTest
    \ <line1>,<line2>call InsertNewTestFunction()

function InsertNewTestFunction() range
    put='TEST:'

    "paste the new unique filename into current file
    put='CONTEXT:'

    put='OUTCOME:       PENDING'
    
endfunction

