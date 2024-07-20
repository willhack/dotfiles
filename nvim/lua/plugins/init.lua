return {
  'sindrets/diffview.nvim',
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
  'numToStr/Comment.nvim', -- "gc" to comment visual regions/lines
  {
    'ahmedkhalf/project.nvim',
    config = function()
      require('project_nvim').setup {}
      vim.keymap.set('n', '<leader>sp', ':Telescope projects<CR>', { desc = '[S]earch [P]rojects' })
    end,
  },
  { -- Highlight Comments
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = { signs = false },
  },
  {
    'folke/persistence.nvim',
    event = 'BufReadPre',
    opts = {},
  },
}
