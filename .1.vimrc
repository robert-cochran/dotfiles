".vimrc

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GENERAL
set nocompatible
set number
syntax on
"laststatus sets column height of status bar, 2 means extra information 
"is always present like filename and edited status ([+])
set laststatus=2
filetype plugin on
let mapleader = " "
"Enable Quicksave
"NOTE - disabled due to delay imposed by vim waiting for potential
"second key press
"map <Esc><Esc> :w<CR>
set backspace=indent,eol,start

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" COLORS AND FONTS
" Enable syntax highlighting
" syntax enable 
"
"try
"	colorscheme desert
"catch
"endtry
"
"set background=dark
"
" Set utf8 as standard encoding and en_US as the standard language
" set encoding=utf8
"
" Use Unix as the standard file type
"set ffs=unix,dos,mac

" Line numbering
set number

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SEARCH 
set hlsearch
" Press Space to turn off highlighting and clear any message already 
" displayed.
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
hi Search ctermfg=black     ctermbg=blue
hi Visual ctermfg=black

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FOLDING
"set foldmethod manual
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview 
set foldlevel=1
:noremap <leader>dtt  DoneTest <cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" HISTORY
" If Vim version is equal to or greater than 7.3 enable undofile.
" This allows you to undo changes to a file even after saving it.
if version >= 703
    set undodir=~/.vim/backup
    set undofile
    set undoreload=10000
endif

" :w !git diff % -
"issue with this is you cant scroll the changes, keypress exits
function GitDiffBuffer()
    execute "w !git diff % -"
endfunction
com! Diff call GitDiffBuffer()


function! s:DiffWithSaved()
  let filetype=&ft
  diffthis
  vnew | r # | normal! 1Gdd
  diffthis
  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffSaved call s:DiffWithSaved()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NORMAL
" Pressing the letter o will open a new line below the current one.
" Exit insert mode after creating a new line above or below the current line.
"nnoremap o o<esc>
"nnoremap O O<esc>

" TODO
" make enter create a new line in normal mode
" using CAPSLOCK as esc without third party sw in vim (vim specific?)
" https://stackoverflow.com/questions/38732184/how-can-i-remap-my-osx-keyboard-without-using-third-party-programs

"noremap <Leader>y "*y
vnoremap Y "*y
noremap <Leader>cp "*p
"noremap <Leader>p "_dP
"nnoremap d "_d

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" INSERT
" for command mode map shift tab to 'de-tab'
"nnoremap <S-Tab> <<
" for insert mode to map shift tab to 'de-tab'
inoremap <S-Tab> <C-d>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FILES
:map gf :e <cfile><CR>
":noremap <leader>gf :e <cfile><cr>
"creates a file for the filename under the cursor
"used in conjunction with gf to go to file, and ctrl o to go back up a file
"serves as a way to create wiki style links to jump between tasks and subtasks

:noremap <leader>ss :update<CR>

set hidden
set autochdir

":noremap <leader>tt :e ~/code/SCRATCHPAD/TASKS/TODO.txt<cr>
":noremap <leader>sb :e ~/sandbox<cr>

"command! -nargs=+ foldsearch exe "normal /".<q-args>."
\z"

" Ctrl-j/k deletes blank line below/above, and Alt-j/k inserts.
"nnoremap <silent><C-j> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
"nnoremap <silent><C-k> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
"nnoremap <silent><M-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
"nnoremap <silent><M-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

" Changes any file to be an executable, really cool little mapping
" NOTE: original used nnoremap instead of noremap, not sure the difference
:noremap <leader>fx :!chmod +x %<CR>

" use fzf.vim to search files
nnoremap <silent> <C-f> :Files<CR>

"set grepprg=rg\ --vimgrep\ --smart-case\ --follow

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FORMATTING
set ruler
set colorcolumn=81
highlight colorcolumn ctermbg=darkgrey guibg=orange
"filetype plugin indent on   " show existing tab with 4 spaces width
set tabstop=4               " when indenting with '>', use 4 spaces width
set shiftwidth=4            " on pressing tab, insert 4 spaces
set expandtab
set autoindent              " keep indentation from previous line
set number
set tw=80

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PLUGINS
""call plug#begin()
"call plug#begin('~/.vim/addons')


"	Plug 'voldikss/vim-floaterm'	
"	Plug 'tc50cal/vim-terminal'

"   wiki
"   plug 'lervag/wiki.vim'

"   alignment
"   Plug 'junegunn/vim-easy-align'
"   Plug 'michaeljsmith/vim-indent-object'


"	fuzzy finder - nvim: 
"	Plug 'nvim-telescope/telescope.nvim' 
" 	fuzzy finder - vim: 
""    Plug 'junegunn/fzf.vim'
""    Plug 'junegunn/fzf'
"   Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"   fzf.vim

"   buffers/fileexplorer
"   Plug 'bling/vim-bufferline'
"   Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
"   Plug 'el-iot/buffer-tree-explorer'
"   Plug 'ctrlpvim/ctrlp.vim'
"   Plug 'fholgado/minibufexpl.vim'
"   Plug 'nvim-telescope/telescope.nvim'


"   code
"	lsp - nvim: 
"	Plug 'neovim/nvim-lspconfig'
"	Plug 'hrsh7th/nvim-cmp'
"	lsp - vim
"	Plug 'neoclide/coc.nvim', {'branch': 'release' }
    " believes this works for vim as well
    " language servers that live in ~/.config/coc
    " https://github.com/neoclide/coc-java 
    " coc-json
    " coc-tsserver
"   beautiful aesthetic cli akin to an IDE
"   Plug NvChad/NvChad
"   autocomplete -  neo/vim
"   Plug 'github/copilot.vim'`

"   git
""    Plug 'tpope/vim-fugitive' "note: run :Git to use
"   https://github.com/junegunn/gv.vim "note: requires vim-fugitive
"   https://github.com/airblade/vim-gitgutter "note: viewing git diffs 
"   in vim but not awful (well we'll see anyway)

"   urls
"   https://github.com/junegunn/tmux-fzf-url

"   aesthetic   colo(u)rs
"   Plug 'ap/vim-css-color'
"   Plug 'junegunn/seoul256.vim'   
"   Plug 'junegunn/goyo.vim' " (distraction free vim)
"	Plug 'ghifarit53/tokyonight-vim'

""call plug#end()


" Use <Tab> and <S-Tab> to navigate the completion list
"inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
"let g:wiki_root = '~/wiki'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TASKS
" Move to the parent task for custom task files
" relies on formatting where top line is filename, line below is parent
" e.g. 
" index.txt
" - ../parent.txt
:noremap <leader>pt ggj$bgf
