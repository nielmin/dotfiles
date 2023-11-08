return {
    {
        "nvim-treesitter/nvim-treesitter", 
        build = ":TSUpdate",
        config = function ()
            local configs = require("nvim-treesitter.configs")

            configs.setup({
                ensure_installed = { 
                    "c",
                    "lua",
                    "html",
                    "python",
                    "go"
                },
                sync_install = false,
                higlight = { enable = true },
                indent = { enable = true },
            })
        end
    }
}
