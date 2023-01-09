local home = os.getenv('HOME')
local db = require('dashboard')

db.custom_center = {
  {
    icon = "  ",
    desc = "Projects                                ",
    action = "Telescope project",
  },
  { icon = '  ',
    desc = 'Recently opened files                   ',
    action = 'Telescope oldfiles',
  },
  { icon = '  ',
    desc = 'Find  File                              ',
    action = 'Telescope find_files find_command=rg,--hidden,--files',
  },
  { icon = '  ',
    desc = 'File Browser                            ',
    action = 'Telescope file_browser',
  },
  { icon = '  ',
    desc = 'Find  word                              ',
    action = 'Telescope live_grep',
  },
}
