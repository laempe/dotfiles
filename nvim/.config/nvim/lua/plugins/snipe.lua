return {
  "leath-dub/snipe.nvim",
  keys = {
    {'<leader>s', function () require('snipe').open_buffer_menu() end}
  },
  opts = {
    navigate = {
      cancel_snipe = "q",
    },
  }
}
