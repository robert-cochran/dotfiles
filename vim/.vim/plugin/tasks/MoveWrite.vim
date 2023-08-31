"cuts selected text and pastes it into a new file name given as first argument  
:command! -bang -range -nargs=1 -complete=file MoveWrite                           
    \ <line1>,<line2>write <args>                                                  
    \ | <line1>,<line2>delete _                                                    
                                      
