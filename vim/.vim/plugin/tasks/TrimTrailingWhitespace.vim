" Removes trailing spaces
function TrimWhiteSpace()
  %s/\s*$//
  ''
endfunction

"set list listchars=trail:.,extends:>
"autocmd FileWritePre * call TrimWhiteSpace()
"autocmd FileAppendPre * call TrimWhiteSpace()
"autocmd FilterWritePre * call TrimWhiteSpace()
"autocmd BufWritePre * call TrimWhiteSpace()
"
"map <F2> :call TrimWhiteSpace()<CR>
"map! <F2> :call TrimWhiteSpace()<CR>
"
