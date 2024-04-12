" various commands that aren't used but might be helpful later

"map <Esc><Esc> :w<CR>  " Enable Quicksave (causes global ESC delay)
"set ffs=unix,dos,mac   " Use Unix as the standard file type
"set encoding=utf8 " Set utf8 as standard encoding and en_US as standard lang

"COPY
"noremap <Leader>y "*y
"noremap <Leader>p "_dP
"nnoremap d "_d


"FILES

"creates a file for the filename under the cursor
":map gf :e <cfile><CR>
":noremap <leader>gf :e <cfile><cr>
"used in conjunction with gf to go to file, and ctrl o to go back up a file
"serves as a way to create wiki style links to jump between tasks and subtasks

" Ctrl-j/k deletes blank line below/above, and Alt-j/k inserts.
"nnoremap <silent><C-j> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
"nnoremap <silent><C-k> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
"nnoremap <silent><M-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
"nnoremap <silent><M-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

" Changes any file to be an executable
"nnoremap <leader>fx :!chmod +x %<CR>
":noremap <leader>fx :!chmod +x %<CR>

" use fzf.vim to search files
"nnoremap <silent> <C-f> :Files<CR>

":noremap <leader>ss :update<CR>
"command! -nargs=+ foldsearch exe "normal /".<q-args>."\z"
":noremap <leader>tt :e ~/code/SCRATCHPAD/TASKS/TODO.txt<cr>
":noremap <leader>sb :e ~/sandbox<cr>
":noremap <leader>tt :e ~/code/SCRATCHPAD/TASKS/TODO.txt<cr>
":noremap <leader>sb :e ~/sandbox<cr>

"set grepprg=rg\ --vimgrep\ --smart-case\ --follow

