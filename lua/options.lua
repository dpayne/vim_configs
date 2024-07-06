local set = vim.opt

-- general
set.encoding = "utf-8"                              --default encoding
set.syntax = "on"                                   --critical for better syntax highlighting
set.scrolloff = 3                                   --allow n lines at the bottom and top
set.ignorecase = true                               --ignore case in search
set.laststatus = 3                                  --global statusline
set.cmdheight = 2                                   --screen lines for command-line
set.updatetime = 300                                --quciker update  time for better experience
set.shortmess = vim.o.shortmess .. "c"
set.viewoptions = "folds,options,cursor,unix,slash" -- Better Unix / Windows compatibility
set.history = 1000                                  -- Store a ton of history (default is 20)
set.spell = true                                    -- Spell checking on
set.spell.spelllang = "en_us"
set.hidden = true                                   -- Allow buffer switching without saving

if vim.fn.has("macunix") == 1 then
    vim.g["python3_host_prog"] = "/usr/local/bin/python3" --python virtualenv path
else
    vim.g["python3_host_prog"] = "/usr/bin/python3"       --python virtualenv path
end

if vim.fn.exists("+termguicolors") then
    vim.opt.termguicolors = true -- true colours for nvim in tmux
end

-- formatting
set.wrap = false      -- Do not wrap long lines
set.autoindent = true -- Indent at the same level of the previous line
set.shiftwidth = 4    -- Use indents of 4 spaces
set.expandtab = true  -- Tabs are spaces, not tabs
set.tabstop = 4       -- An indentation every four columns
set.softtabstop = 4   -- Let backspace delete indent
-- set.pastetoggle = "<F12>" -- pastetoggle (sane indentation on pastes)

---- signcolumn
set.number = true             --show cursorline number
if vim.fn.has("nvim-0.5.0") or vim.fn.has("patch-8.1.1564") then
    set.signcolumn = "number" -- display signs in the 'number' column
else
    set.signcolumn = "yes"
end

-- enable backups
set.backup = true
set.writebackup = true
set.backupdir = os.getenv("HOME") .. "/.cache/vim" --swap file directory
if vim.fn.has("persistent_undo") then
    set.undofile = true                            -- So is persistent undo ...
    set.undolevels = 1000                          -- Maximum number of changes that can be undone
    set.undoreload = 10000                         -- Maximum number lines to save for undo on a buffer reload
end

-- swap files
set.swapfile = true                          --swap files
set.dir = os.getenv("HOME") .. "/.cache/vim" --swap file directory

-- fold
set.foldmethod = "expr"                     --treesitter for folds
set.foldexpr = "nvim_treesitter#foldexpr()" --treesitter for folds
set.foldlevelstart = 2
set.foldlevel = 2
set.foldenable = true -- create folds when file opens
set.foldnestmax = 3   --max nested fold level
set.foldlevel = 2     --fold level: zr or zm
function _G.MyFoldText()
    local foldStartText = vim.fn.getline(vim.v.foldstart) .. "  "
    local foldLineCount = vim.v.foldend - vim.v.foldstart
    local totalLines = vim.api.nvim_buf_line_count(0)
    local foldPercInBuf = math.floor((foldLineCount / totalLines) * 100)
    local conLen = string.len(foldStartText .. foldLineCount .. " lines: ")
    local winWidth = vim.api.nvim_win_get_width(0)

    return foldStartText
        .. string.rep("-", ((winWidth - conLen) - 25))
        .. "  "
        .. foldLineCount
        .. " lines: "
        .. string.rep(" ", 2 - string.len(tostring(foldPercInBuf)))
        .. foldPercInBuf
        .. "%"
end

set.foldtext = "v:lua.MyFoldText()"
vim.opt.fillchars = { fold = " " }

-- clipboard
set.clipboard = "unnamedplus" --copy to system clipboard

-- better split window locations
set.splitright = true --default vertical split to right
set.splitbelow = true --default horizental split to below

-- mouse
set.mouse = ""       -- Disable mouse usage
set.mousehide = true -- Hide the mouse cursor while typing
