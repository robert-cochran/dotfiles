".vimrc

" ~/.vim/cheatsheet.vim 

" GENERAL
set nocompatible
set number          " Line numbering
syntax on           " Enable syntax highlighting (see also 'syntax enable')
set laststatus=2    " Sets status bar column height to display extra info
filetype plugin on
let mapleader = " " " map leader to space
set backspace=indent,eol,start
set hlsearch        " highlight searches
set ruler
set colorcolumn=81
hi colorcolumn ctermbg=darkgrey guibg=orange
set tabstop=4               " when indenting with '>', use 4 spaces width
set shiftwidth=4            " on pressing tab, insert 4 spaces
set expandtab
set autoindent              " keep indentation from previous line
set tw=80
set hidden
set autochdir
"filetype plugin indent on   " show existing tab with 4 spaces width

" COLORS
source ~/.vim/colourscheme.vim

" SEARCH 
" Press Space to turn off highlighting
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR> 
hi Search ctermfg=black     ctermbg=blue
hi Visual ctermfg=black

" FOLDING
"set foldmethod manual
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview 
set foldlevel=1

" HISTORY
if version >= 703 " If Vim version >= 7.3 enable undofile
    "undo changes to file even after saving it.
    set undodir=~/.vim/backup
    set undofile
    set undoreload=10000
endif

" COPY
vnoremap Y "*y
noremap <Leader>cp "*p

" INSERT
inoremap <S-Tab> <C-d>

" PLUGIN + PLUGIN MANAGER (https://github.com/junegunn/vim-plug)
source ~/.vim/plugins.vim

" Use <Tab> and <S-Tab> to navigate the completion list
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" TASKS (CUSTOM)
" Move to the parent task file 
:noremap <leader>pt ggj$bgf
