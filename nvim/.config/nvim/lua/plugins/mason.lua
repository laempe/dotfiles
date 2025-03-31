return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "barreiroleo/ltex_extra.nvim",
  },

  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup({})

    require("lspconfig").pyright.setup({})

    require("lspconfig").ltex.setup({
      settings = { ltex = { language = "en-Us" } },
      on_attach = function(client, bufnr)
        local opts = { noremap = true, silent = true, buffer = bufnr }
        local keymap = vim.keymap.set
        keymap("n", "<leader>cm", function() vim.diagnostic.open_float(nil, { focusable = false }) end, opts)
        keymap("n", "<leader>ca", vim.lsp.buf.code_action, opts)
        keymap("n", "<leader>cn", vim.diagnostic.goto_next, opts)
        keymap("n", "<leader>cp", vim.diagnostic.goto_prev, opts)
        require("ltex_extra").setup { path = "~/.local/share/nvim/ltex" }
      end
    })

  end
}
