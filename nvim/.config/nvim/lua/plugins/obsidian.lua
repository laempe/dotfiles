return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  dependencies = {"nvim-lua/plenary.nvim"},
  ft = "markdown",
  ui = { enable = false },
  config = function()
    require("obsidian").setup({
      disable_frontmatter = true,
      workspaces = {
        {
          name = "mindspace",
          path = "~/mindspace",
        },
      },
    })
  end,
}
