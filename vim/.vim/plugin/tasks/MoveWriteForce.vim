"cuts selected text and pastes it into a new file name given as first argument
"if file exists already, overwrite it
:command! -bang -range -nargs=1 -complete=file MoveWriteForce                      
    \ <line1>,<line2>write<bang> <args>                                            
    \ | <line1>,<line2>delete _   
