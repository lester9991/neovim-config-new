-- Standalone plugins with less than 10 lines of config go here
return {
  {
    -- Tmux & split window navigation
    'christoomey/vim-tmux-navigator',
  },
  {
    -- Detect tabstop and shiftwidth automatically
    'tpope/vim-sleuth',
  },
  {
    -- Powerful Git integration for Vim
    'tpope/vim-fugitive',
  },
  {
    -- GitHub integration for vim-fugitive
    'tpope/vim-rhubarb',
  },
  {
    -- Hints keybinds
    'folke/which-key.nvim',
  },
  {
    -- Autoclose parentheses, brackets, quotes, etc.
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = true,
    opts = {},
  },
  {
    -- Highlight todo, notes, etc in comments
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = { signs = false },
  },
  {
    -- High-performance color highlighter
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup()
    end,
  },
-- Git Blame
   {
    -- https://github.com/f-person/git-blame.nvim
    'f-person/git-blame.nvim',
    event = 'VeryLazy',
    opts = {
      enabled = false, -- disable by default, enabled only on keymap
      date_format = '%m/%d/%y %H:%M:%S', -- more concise date format
    },
   },
    {
  -- https://github.com/utilyre/barbecue.nvim
    "utilyre/barbecue.nvim",
    name = "barbecue",
    version = "*",
    dependencies = {
    -- https://github.com/SmiteshP/nvim-navic
      "SmiteshP/nvim-navic",
    -- https://github.com/nvim-tree/nvim-web-devicons
      "nvim-tree/nvim-web-devicons", -- optional dependency
    },
    opts = {
      -- configurations go here
    },
    {
      -- https://github.com/kylechui/nvim-surround
      'kylechui/nvim-surround',
      version = "*", -- Use for stability; omit to use `main` branch for the latest features
      event = "VeryLazy",
      opts = {}
    }
  }
  
}
