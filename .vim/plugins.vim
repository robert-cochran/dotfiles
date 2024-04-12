
call plug#begin()
"call plug#begin('~/.vim/addons')

    " terminal
	Plug 'voldikss/vim-floaterm'	
    " Plug 'tc50cal/vim-terminal'
    " Plug 'wincent/terminus'

    " 
    Plug 'neoclide/coc.nvim', { 'branch': 'release' }

    " fuzzy finder (see: telescope)
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    " Plug 'wincent/command-t'
    " Plug 'wincent/ferret'

    " colourschemes
    Plug 'flazz/vim-colorschemes'

"   wiki
"   plug 'lervag/wiki.vim'

"   alignment
"   Plug 'junegunn/vim-easy-align'
"   Plug 'michaeljsmith/vim-indent-object'


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

call plug#end()

