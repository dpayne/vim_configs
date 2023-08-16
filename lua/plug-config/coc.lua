-- Extensions
vim.g["coc_global_extensions"] = {
    "coc-json",
    "coc-pyright",
    "coc-java",
    "coc-snippets",
    "coc-tsserver",
    "coc-vimlsp",
    "coc-lists",
    "coc-sh",
    "coc-sumneko-lua",
    "coc-clangd",
    "coc-phpls",
    "coc-rust-analyzer"
}

-- highlight
-- for custom pop menu
vim.api.nvim_set_hl(0, "CocCustomPopup", { fg = "#ebdbb2", bg = "#282828" })
-- border
vim.api.nvim_set_hl(0, "CocCustomPopupBoder", { fg = "#5F5F5F", bold = true })
-- selected row
vim.api.nvim_set_hl(0, "CocMenuSel", { bg = "#3c3836", bold = true })
-- matched_text
vim.api.nvim_set_hl(0, "CocSearch", { fg = "#fabd2f" })

-- AutoCmds
-- highlight the symbol and its references when holding the cursor.
vim.api.nvim_create_autocmd("CursorHold", { pattern = '*', command = [[call CocActionAsync("highlight")]] })

-- show documentation in preview window.
function Show_documentation()
    local filetype = vim.bo.filetype
    if filetype == "vim" or filetype == "help" then
        vim.api.nvim_command("h " .. vim.fn.expand("<cword>"))
    elseif vim.fn["coc#rpc#ready"]() then
        vim.fn.CocActionAsync("doHover")
    else
        vim.api.nvim_command(
            "!" .. vim.bo.keywordprg .. " " .. vim.fn.expand("<cword>")
        )
    end
end

-- HAVNE'T FOUND A GOOD USE-CASE YET
-- " Applying codeAction to the selected region.
-- " Example: `<leader>aap` for current paragraph
-- xmap <leader>a  <Plug>(coc-codeaction-selected)
-- nmap <leader>a  <Plug>(coc-codeaction-selected)

-- " Remap keys for applying codeAction to the current buffer.
-- nmap <leader>ac  <Plug>(coc-codeaction)
-- " Apply AutoFix to problem on the current line.
-- " NOTE: haven't found a use case for it yet. makes quit shortcut wait.
-- " Therefore disabling it for now
-- " nmap <leader>qf  <Plug>(coc-fix-current)


-- Commands
-- " Add `:Format` command to format current buffer.
vim.api.nvim_create_user_command("Format", ":call CocAction('format')", { nargs = 0 })

-- Add Doc command
vim.api.nvim_create_user_command("Doc", ":lua Show_documentation()", { nargs = 0 })

-- Add `:OR` command for organize imports of the current buffer.
vim.api.nvim_create_user_command("OI", ":call CocActionAsync('runCommand', 'editor.action.organizeImport')",
    { nargs = 0 })
