
" :w !git diff % -
"issue with this is you cant scroll the changes, keypress exits
function GitDiffBuffer()
    execute "w !git diff % -"
endfunction
com! Diff call GitDiffBuffer()
