-- vim: set foldmethod=marker foldlevel=0: foldmarker={{{,}}}: foldlevelstart=0
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, silent = true, expr = true }

-- set space as leader
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- in visual line mode do not join pasted text to next line
keymap("v", "p", [[mode() ==# "V" && match(getreg(), "\n$") == -1 ? "\"_dd<esc>O<esc>p" : "\"_dP"]], expr_opts)

-- buffers shortcuts
keymap("n", "<leader>bf", ":bnext<CR>", opts)
keymap("n", "<leader>bb", ":bprevious<CR>", opts)
keymap("n", "<leader>d", ":bdelete<CR>", opts)

-- keep jumps and search in middle
keymap("n", "n", "nzz", opts)
keymap("n", "N", "Nzz", opts)
keymap("n", "<C-o>", "<C-o>zz", opts)
keymap("n", "<C-i>", "<C-i>zz", opts)

-- escape: also clears highlighting
keymap("n", "<esc>", "<Cmd>noh<return><esc>", opts)

-- format
keymap("", "<C-L>", ":Format<CR>", {})
keymap("i", "<C-L>", ":Format<CR> <Esc>", {})

-- switch header files
-- keymap("n", '<leader>fs', ':CocCommand clangd.switchSourceHeader vsplit<cr>', opts)
keymap("n", '<leader>fs', ':CocCommand clangd.switchSourceHeader e<cr>', opts)

--  git gutter toggle
keymap("n", "tg", ":GitGutterToggle<CR>", {})

-- vimspector
keymap("n", "<leader>td", ":lua ToggleDebugMode()<CR>", opts)

-- centerpad
keymap("n", "<leader>c", ":Centerpad 75<CR>", opts)

-- {{{ fzf

keymap('n', '<C-f>', ":FzfLua live_grep<CR>", opts)
keymap('n', '<C-y>', "<cmd>lua require('fzf-lua').live_grep_resume()<cr>", opts) -- resume search
keymap('n', '<c-P>', ":FzfLua files<CR>", opts)
keymap('n', '<C-t>', "<cmd>lua require('fzf-lua').files()<cr>", opts)            -- resume search
keymap('n', '<c-b>', "<cmd>lua require('fzf-lua').buffers()<cr>", opts)
keymap('n', '<leader>gg', "<cmd>lua require('fzf-lua').git_files()<cr>", opts)
keymap('n', '<leader>gs', "<cmd>lua require('fzf-lua').git_status()<cr>", opts)
keymap('n', '<leader>gc', "<cmd>lua require('fzf-lua').git_commits()<cr>", opts)
keymap('n', '<leader>gb', "<cmd>lua require('fzf-lua').git_branches()<cr>", opts)
keymap('n', '<leader>hh', "<cmd>lua require('fzf-lua').oldfiles()<cr>", opts)
keymap('n', '<leader>ff', "<cmd>lua require('fzf-lua').quickfix()<cr>", opts)
keymap('n', '<leader>pf', "<cmd>lua require('fzf-lua').grep_cword()<cr>", opts) -- search for current word under cursor

-- }}}

-- {{{ Git fugitive

keymap("n", "<leader>gd", ":Gvdiffsplit<CR>", opts)
keymap("n", "<leader>gr", ":Gread<CR>", opts)  -- git checkout file (revert)
keymap("n", "<leader>ga", ":Gwrite<CR>", opts) -- git add file
keymap("n", "<leader>gD", ":G diff<CR>", opts)

-- }}}

-- {{{ coc

-- toggle diagnostics
keymap("n", "<leader>ta", ":call CocAction('diagnosticToggle')<CR>", {})

-- use CTRL-J and K to move on snippets and auto completion
vim.g["coc_snippet_next"] = ""
vim.g["coc_snippet_prev"] = ""
keymap(
    "i",
    "<c-j>",
    [[coc#pum#visible() ? coc#pum#next(1) : coc#jumpable() ? "\<c-r>=coc#rpc#request('snippetNext', [])<cr>" : "\<c-j>"]]
    ,
    expr_opts
)
keymap(
    "i",
    "<c-k>",
    [[coc#pum#visible() ? coc#pum#prev(1) : coc#jumpable() ? "\<c-r>=coc#rpc#request('snippetPrev', [])<cr>" : "\<c-k>"]]
    ,
    expr_opts
)

-- use CR to complete
keymap(
    "i",
    "<CR>",
    [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]],
    expr_opts
)

-- use <c-space> to trigger completion.
keymap("i", "<c-space>", [[coc#refresh()]], expr_opts)

-- navigate diagnostic
keymap("n", "[a", "<Plug>(coc-diagnostic-prev)", { silent = true })
keymap("n", "]a", "<Plug>(coc-diagnostic-next)", { silent = true })

-- GoTo code navigation.
keymap("n", "gd", "<Plug>(coc-definition)", { silent = true })
keymap("n", "gs", ":call CocAction('jumpDefinition', 'vsplit') <CR>", { silent = true })
keymap("n", "gy", "<Plug>(coc-type-definition)", { silent = true })
keymap("n", "gi", "<Plug>(coc-implementation)", { silent = true })
keymap("n", "gr", "<Plug>(coc-references)", { silent = true })
keymap("n", "K", ":Doc <CR>", opts)

-- Symbol renaming.
keymap("n", "<leader>rn", "<Plug>(coc-rename)", {})

-- " Formatting selected code. Followed by highlighted code
keymap("x", "<C-l>", "<Plug>(coc-format-selected)", {})

-- " Mappings for CoCList
-- " Show all diagnostics (Errors and warnings).
keymap("n", "<leader>a", ":<C-u>CocList diagnostics<CR>", opts)
-- " Find symbol of current document
keymap("n", "<leader>o", ":<C-u>CocList outline<CR>", opts)

-- }}}
