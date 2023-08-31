"MoveAppendForce.vim
:command! -bang -range -nargs=1 -complete=file MoveAppendForce                     
    \ <line1>,<line2>write<bang> >> <args>                                         
    \ | <line1>,<line2>delete _   
