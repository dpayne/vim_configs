-- plugins
require("plugins")

-------------------------------------------------
-- Basic configuration
-------------------------------------------------
require("options")
require("keyMappings")
require("autocmds")
require("highlights")

-------------------------------------------------
-- Plugins configuration
-------------------------------------------------
require('plugins_config')

-- colorscheme
-- vim.cmd([[colorscheme gruvbox]])
vim.cmd([[colorscheme pywal16]])
