return {
  'echasnovski/mini.nvim',
  version = '*',
  config = function()

    require('mini.hipatterns').setup({
      highlighters = {
        hex_color = require('mini.hipatterns').gen_highlighter.hex_color(),
      },
    })

    require('mini.indentscope').setup({
      symbol = '╎',
      options = {
        draw = {
          delay = 0,
        },
        try_as_border = true,
      },
    })

    require('mini.files').setup({
      windows = {
        preview = true,
        width_focus = 30,
        width_nofocus = 20,
      },
      mappings = {
        close       = 'q',
        go_in       = 'l',
        go_in_plus  = 'L',
        go_out      = 'h',
        go_out_plus = 'H',
        mark_goto   = "'",
        mark_set    = 'm',
        reset       = '<BS>',
        reveal_cwd  = '@',
        show_help   = 'g?',
        synchronize = '=',
        trim_left   = '<',
        trim_right  = '>',
      },
    })

    require('mini.animate').setup({

      cursor = {
        enable = true,
      },

      scroll = {
        enable = false,
      },

      resize = {
        enable = true,
      },

      open = {
        enable = true,
      },

      close = {
        enable = true,
      },
    })

    vim.api.nvim_set_keymap(
      'n',
      '<leader>f',
      ':lua MiniFiles.open()<CR>',
      { noremap = true, silent = true }
    )

  end,
}
