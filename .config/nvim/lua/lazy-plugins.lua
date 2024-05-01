--[[ Configure and install plugins

NOTE: Plugins can be added from file or from github repo (githubUsr/repo)
Plugins can also be added by using a table,
with the first argument being the link and the following
keys can be used to configure plugin behavior/loading/etc.

Use `opts = {}` to force a plugin to be loaded.

 This is equivalent to:
   require('Comment').setup({})

NOTE: The import below can automatically add your own plugins,
configuration, etc from `lua/custom/plugins/*.lua`
   This is the easiest way to modularize your config.

 Uncomment the following line and add your plugins to
 `lua/custom/plugins/*.lua` to get going.
   For additional information,
   see `:help lazy.nvim-lazy.nvim-structuring-your-plugins`
{ import = 'custom.plugins' },


--]]

require("lazy").setup({

  "tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically

  { "numToStr/Comment.nvim", opts = {} }, -- "gc" to comment vis regions/lines

  require "plugins/gitsigns",
  require "plugins/which-key",
  require "plugins/telescope",
  require "plugins/lspconfig",
  require "plugins/conform",
  require "plugins/cmp",
  require "plugins/tokyonight",
  require "plugins/todo-comments",
  require "plugins/mini",
  require "plugins/treesitter",

  require "plugins.neo-tree",
  require "plugins.debug",
  -- require "plugins.indent_line",
  require "plugins.lint",
  require "plugins.autopairs",
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use
    -- the default lazy.nvim defined Nerd Font icons, otherwise define a
    -- unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = "⌘",
      config = "🛠",
      event = "📅",
      ft = "📂",
      init = "⚙",
      keys = "🗝",
      plugin = "🔌",
      runtime = "💻",
      require = "🌙",
      source = "📄",
      start = "🚀",
      task = "📌",
      lazy = "💤 ",
    },
  },
})

-- vim: ts=2 sts=2 sw=2 et
