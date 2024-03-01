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
-- use gruvbox if SSH session
if vim.env.SSH_CLIENT then
    vim.cmd([[colorscheme gruvbox]])
    vim.cmd([[hi Normal guibg=NONE ctermbg=NONE]])
else
    -- vim.cmd([[colorscheme pywal16]])
    vim.cmd([[colorscheme gruvbox]])
    vim.cmd([[hi Normal guibg=NONE ctermbg=NONE]])
end
