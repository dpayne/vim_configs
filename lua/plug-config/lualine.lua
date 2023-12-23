local CodeGPTModule = require("codegpt")

require("lualine").setup({
    options = {
        theme = 'pywal16-nvim',
    },
    sections = {
        lualine_a = { "mode" },
        lualine_b = {
            "branch", { "diff", symbols = { added = " ", modified = "*", removed = " " } }
        },
        lualine_c = {
            {
                "filetype",
                padding = { right = 0, left = 2 },
                icon_only = true,
                component_separators = { left = "", right = "" },
            },
            { "filename", padding = { left = 1 }, color = { gui = "bold,italic", fg = "#ebdbb2" } },
        },
        lualine_x = {
            { CodeGPTModule.get_status, color = { fg = "#04c2ed" } }, "encoding", "fileformat"
        },
        lualine_y = {
            {
                "diagnostics",
                sources = { "coc" },
                sections = { "hint", "warn", "error" },
                symbols = { error = " " },
                always_visible = true,
            },
            -- { "coc#status" },
        },
        lualine_z = { "progress", "location" },
    },
})
