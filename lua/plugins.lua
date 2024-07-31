require("packer").startup(function()
    use 'wbthomason/packer.nvim'

    -- Utils
    use("nvim-lua/plenary.nvim")
    use("MunifTanjim/nui.nvim")

    -- UI
    use("nvim-lualine/lualine.nvim")    -- status line
    use("PeterRincker/vim-searchlight") -- highlight search results
    use("flazz/vim-colorschemes")       -- colorschemes

    -- Autocompletion And IDE Features
    use({ "neoclide/coc.nvim", branch = "release" })
    use("github/copilot.vim")
    use({ "dpayne/CodeGPT.nvim", branch = "master" })

    -- Movement
    use("farmergreg/vim-lastplace") -- remember cursor position after closing a file

    -- Language Support
    use("solarnz/thrift.vim")
    use("DingDean/wgsl.vim")
    -- use("octol/vim-cpp-enhanced-highlight") -- better syntax highlighting for c++
    use("bfrg/vim-cpp-modern")

    -- Git
    use("tpope/vim-fugitive")     -- git commands
    use("airblade/vim-gitgutter") -- git diff in gutter

    -- General
    use("tpope/vim-commentary")    -- comment out things
    use("nicwest/vim-http")        -- http client
    use("tpope/vim-repeat")        -- repeat plugin commands
    use("puremourning/vimspector") -- debugger
    use { "ibhagwan/fzf-lua",
        -- optional for icon support
        requires = { "nvim-tree/nvim-web-devicons" }
    }
    use("jiangmiao/auto-pairs") -- auto close brackets
    use("uZer/pywal16.nvim")
    use { 'smithbm2316/centerpad.nvim' }
end)
