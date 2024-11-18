local themes = {
  {
    'maxmx03/solarized.nvim',
    priority = 1000,
    config = function()
      vim.keymap.set('n', '<leader>cs', ':colorscheme solarized <bar> :set background=light<CR>', { desc = '[C]olorscheme [S]oloarized' })
    end,
  },
  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    opts = { transparent = true },
  },
  {
    'eldritch-theme/eldritch.nvim',
    lazy = false,
    priority = 1000,
    opts = { transparent = true },
  },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    opts = { transparent_background = true },
  },
}
return themes
