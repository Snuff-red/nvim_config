-- place this in one of your configuration file(s)
local hop = require('hop')
local directions = require('hop.hint').HintDirection
hop.setup()
require("keymapping").hopKeyList(hop,directions)
