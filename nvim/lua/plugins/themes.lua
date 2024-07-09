local themes = {
  {
    'maxmx03/solarized.nvim',
    priority = 1000,
    config = function()
      vim.keymap.set('n', '<leader>cs', ':colorscheme solarized <bar> :set background=light<CR>', { desc = '[C]olorscheme [S]oloarized' })
    end,
  },
  {
    'scottmckendry/cyberdream.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('cyberdream').setup {
        transparent = true,
        borderless_telescope = false,
        italic_comments = true,
        extensions = {
          lazy = true,
          gitsigns = true,
          mini = true,
          whichkey = true,
          telescope = true,
        },
      }
    end,
  },
  { 'rebelot/kanagawa.nvim', opts = { transparent = true } },
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
    -- opts = { transparent_background = true },
  },
  {
    'lunarvim/synthwave84.nvim',
    lazy = false,
    priority = 1000,
    opts = { glow = { operator = true } },
  },
}
return themes
