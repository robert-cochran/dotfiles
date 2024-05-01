-- [[ Setting options ]]
-- See `:help vim.opt`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

-----------------------------------------------------------
-- General
-----------------------------------------------------------
vim.opt.showmode = true -- Don't show the mode since its already in status line
vim.opt.swapfile = false -- Don't use swapfile
vim.opt.completeopt = "menuone,noinsert,noselect" -- Autocomplete options
vim.opt.clipboard = "unnamedplus" -- Sync clipboard between OS and Neovim.
-- See `:help 'clipboard'`

-----------------------------------------------------------
-- Neovim UI
-----------------------------------------------------------
vim.opt.number = true -- Make line numbers default
vim.opt.showmatch = true -- Highlight matching parenthesis
vim.opt.colorcolumn = "81" -- Line length marker at 81 columns
vim.opt.textwidth = 80 -- Wrap at 80 columns
vim.opt.linebreak = true -- Wrap on word boundary
vim.opt.breakindent = true -- see ":h breakindent" and ":h breakindentoptions"
vim.opt.splitright = true -- Vertical split to the right
vim.opt.splitbelow = true -- Horizontal split to the bottom
vim.opt.ignorecase = true -- Ignore case letters when search. Case-insensitive
-- searching UNLESS \C or one or more capital letters in the search term
vim.opt.smartcase = true -- Ignore lowercase for the whole pattern
vim.opt.cursorline = true -- Show which line your cursor is on
vim.opt.scrolloff = 10 -- Min number screen lines to keep above and below cursor
vim.opt.inccommand = "split" -- Preview substitutions live, as you type!
vim.opt.termguicolors = true -- Enable 24-bit RGB colors
-- vim.opt.signcolumn = "yes" -- Keep signcolumn on by default
-- NOTE This will set vertical gutter to left of line numbers
vim.opt.laststatus = 3 -- Set global statusline
vim.opt.autochdir = true
vim.opt.list = true -- Sets how nvim displays certain whitespace chars in editor
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" } -- See `:h 'list'`
-- and `:help 'listchars'`

-----------------------------------------------------------
-- Tabs, indent
-----------------------------------------------------------
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.shiftwidth = 4 -- Insert 4 spaces when pressing tab
vim.opt.tabstop = 4 -- 1 tab == 4 spaces. good for '>' indenting
vim.opt.smartindent = true -- Autoindent new lines to match prev line

-----------------------------------------------------------
-- Memory, CPU
-----------------------------------------------------------
vim.opt.hidden = true -- Enable background buffers
vim.opt.history = 100 -- Remember N lines in history
vim.opt.lazyredraw = true -- Faster scrolling
--vim.opt.synmaxcol = 240 -- Max column for syntax highlight
vim.opt.updatetime = 250 -- ms to wait for trigger an event
--vim.opt.undofile = true -- Save undo history -- this is causing issues on
--startup
--vim.opt.undodir=~/.vim/backup
--vim.opt.undoreload = 100000
vim.opt.updatetime = 250 -- Decrease update time
vim.opt.timeoutlen = 300 -- Decrease mapped sequence wait time. Displays
-- which-key popup sooner

-- misc .vimrc settings
-- filetype plugin on " enables both filetype detection and filetype plugins
-- set backspace=indent,eol,start " allow unrestricted backspacing in insert mode
-- "filetype plugin indent on  " show existing tab with 4 spaces width

-- vim: ts=2 sts=2 sw=2 et
