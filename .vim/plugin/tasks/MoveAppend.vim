"MoveAppend.vim
:command! -bang -range -nargs=1 -complete=file MoveAppend                          
    \ <line1>,<line2>write >> <args>                                               
    \ | <line1>,<line2>delete _    
