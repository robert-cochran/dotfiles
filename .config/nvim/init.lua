--[[

NOTE: CHEATSHEET:

:help lua-guide
  https://learnxinyminutes.com/docs/lua/
  https://neovim.io/doc/user/lua-guide.html

:help
  MOST IMPORTANTLY, we provide a keymap "<space>sh" to [s]earch the [h]elp
  documentation, which is very useful when you're not exactly sure of what
  you're looking for.

:checkhealth - Useful if you experience any errors while trying to install 
  kickstart and need more info.

:help mapleader
  current leader is space

NOTE: PLUGINS:

:Lazy
  To check the current status of your plugins, run
  You can press `?` in this menu for help.

:Lazy update
  To update plugins you can run

--]]

-- Must happen before plugins are loaded (otherwise wrong leader is used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- lua dir files
require "options" -- Setting options
require "keymaps" -- Basic Keymaps
-- require "colours"
-- require "statusline"
require "lazy-bootstrap" -- Install `lazy.nvim` plugin manager
require "lazy-plugins" -- Configure and install plugins

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
