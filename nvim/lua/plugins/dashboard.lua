return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  lazy = false,
  config = function()
    local logo = [[
         ██╗      █████╗ ███████╗██╗   ██╗██╗   ██╗██╗███╗   ███╗          Z
         ██║     ██╔══██╗╚══███╔╝╚██╗ ██╔╝██║   ██║██║████╗ ████║      Z    
         ██║     ███████║  ███╔╝  ╚████╔╝ ██║   ██║██║██╔████╔██║   z       
         ██║     ██╔══██║ ███╔╝    ╚██╔╝  ╚██╗ ██╔╝██║██║╚██╔╝██║ z         
         ███████╗██║  ██║███████╗   ██║    ╚████╔╝ ██║██║ ╚═╝ ██║           
         ╚══════╝╚═╝  ╚═╝╚══════╝   ╚═╝     ╚═══╝  ╚═╝╚═╝     ╚═╝           
    ]]

    logo = string.rep('\n', 8) .. logo .. '\n\n'
    require('dashboard').setup {
      theme = 'doom',
      hide = {
        statusline = false,
      },
      config = {
        header = vim.split(logo, '\n'),
        center = {
          { action = 'Telescope find_files', desc = ' Find File', icon = ' ', key = 'f' },
          { action = 'Telescope oldfiles', desc = ' Recent Files', icon = ' ', key = '.' },
          { action = 'Telescope live_grep', desc = ' Find Text', icon = ' ', key = 'g' },
          {
            action = 'lua require("telescope.builtin").find_files { cwd = vim.fn.stdpath "config" }',
            desc = ' Neovim Config',
            icon = ' ',
            key = 'n',
          },
          { action = 'lua require("persistence").load()', desc = ' Restore Session', icon = ' ', key = 's' },
          { action = 'Lazy', desc = ' Lazy', icon = '󰒲 ', key = 'l' },
          {
            action = function()
              vim.api.nvim_input '<cmd>qa<cr>'
            end,
            desc = ' Quit',
            icon = ' ',
            key = 'q',
          },
        },
      },
    }
  end,
  dependencies = { { 'nvim-tree/nvim-web-devicons' } },
}
