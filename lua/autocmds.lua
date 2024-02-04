local cmd = vim.cmd

-- get rid of traling whitespace
local function TrimWhiteSpace()
    local save = vim.fn.winsaveview()
    vim.api.nvim_command([[keeppatterns %s/\s\+$//e]])
    vim.fn.winrestview(save)
end
vim.api.nvim_create_autocmd("BufWritePre", { pattern = '*', callback = TrimWhiteSpace })

local function ReloadTheme()
    vim.cmd([[colorscheme pywal16]])
    require('lualine').setup({ options = { theme = 'pywal16-nvim' } })
end
vim.api.nvim_create_autocmd("Signal", { pattern = 'SIGUSR1', callback = ReloadTheme })

cmd(':command! WQ wq')
cmd(':command! WQ wq')
cmd(':command! Wq wq')
cmd(':command! Wqa wqa')
cmd(':command! W w')
cmd(':command! Q q')
