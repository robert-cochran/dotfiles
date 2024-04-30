".vimrc

" CHEATSHEET
" MODES: normal, visual, insert, command?
" :map - recursive version of various mapping commands
" :noremap - non-recursive versions of various mapping commands
" :nnoremap - normal mode non-recursive remap
" :inoremap - insert mode nonrecursive remap
" :xmap - visual mode
" :xnoremap - visual mode non-recursive
" MODE TYPES:
" n: normal only
" v: visual and select
" o: operator-pending
" x: visual only
" s: select only
" i: insert
" c: command-line
" l: insert, command-line, regexp-search
"   (and others. Collectively called \"Lang-Arg\" pseudo-mod
" MODE HELP:
" - :help :map
" - :help :noremap
" - :help recursive_mapping
" - :help :map-modes
" KEYBINDINGS/MAPPINGS:
" <S-Tab> - shit tab
" <C-d> - 'de-tab'
" << - 'de-tab'

" GENERAL
set nocompatible                " turns off vi compatibility
set number                      " Line numbering
syntax on                       " Enable syntax highlighting
set laststatus=2                " Sets status bar hght (always show status line)
filetype plugin on        " enables both filetype detection and filetype plugins
set backspace=indent,eol,start  " allow unrestricted backspacing in insert mode
set hlsearch                    " highlight searches
set ruler
set colorcolumn=81
hi colorcolumn ctermbg=darkgrey guibg=orange
set tabstop=4                   " when indenting with '>', use 4 spaces width
set shiftwidth=4                " on pressing tab, insert 4 spaces
set expandtab                   " always use spaces instead of tabs
set autoindent                  " keep indentation from previous line
set tw=80                       " automatically hard wrap at 80 columns
set hidden
set autochdir
"set noswapfile                  " don't create swap files
"filetype plugin indent on        " show existing tab with 4 spaces width

" REMAPS
" map leader to <space>
let mapleader = " "
" insert mode: map shift-tab to ctrl-d. why?
"inoremap <S-Tab> <C-d>
" Move to the parent task file 
:noremap <leader>pt ggj$bgf
" Use <Tab> to navigate the completion list forward
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" Use <S-Tab> to navigate the completion list backward
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" visual mode: Y copies text to shared " buffer
vnoremap Y "*y
" visual mode: leader+cp pastes text from shared " buffer
noremap <Leader>cp "*p
" Press Space to turn off highlighting
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR> 

" COLORS
source ~/.vim/colourscheme.vim

" HIGHLIGHTS
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

" PLUGIN + PLUGIN MANAGER (https://github.com/junegunn/vim-plug)
source ~/.vim/plugins.vim

