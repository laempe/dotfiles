return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    option = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            ensure_installed = { 
            "c", "lua", "python", "toml" 
            },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },  
        })
    end
}
