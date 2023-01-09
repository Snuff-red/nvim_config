local telescope = require('telescope')

telescope.setup {
  defaults = {
    -- 打开弹窗后进入的初始模式，默认为 insert，也可以是 normal
    initial_mode = "insert",
    mappings = require('keymapping').telescopeList,
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    -- Your extension configuration goes here:
    file_browser = {
      theme = "ivy",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
      },
    },
    project = {
      base_dirs = {
        { '~/' },
      },
      hidden_files = true, -- default: false
      theme = "dropdown",
      order_by = "asc",
      sync_with_nvim_tree = true, -- default false
    }
    -- please take a look at the readme of the extension you want to configure
  }
}

require("telescope").load_extension "file_browser"
require 'telescope'.load_extension('project')
