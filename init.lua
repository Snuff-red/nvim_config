require('basic')

require('keymapping')

require('plugins')

require('colorscheme')

--plugins-config
require('plugin-config.nvim-tree')
require('plugin-config.lualine')
require('plugin-config.bufferline')
require('plugin-config.telescope')
require('plugin-config.dashboard')
require("plugin-config.project")
require('plugin-config.nvim-treesitter')
require('plugin-config.cmp')
require('plugin-config.indent-blankline')
require('plugin-config.auto-pairs')
require('plugin-config.comment')
require('plugin-config.hop')

--lsp-config
require('lsp.configlsp')
require('lsp.null-ls')
